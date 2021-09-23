import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading = false;
  List<int> _numbers = [];

  bool get initiallyLoading => _loading && _numbers.isEmpty;

  /// 同期的に setState を呼び出しているのでエラーになる
  Future<void> _fetchNext() async {
    if (_loading) {
      return;
    }
    setState(() {
      _loading = true;
    });

    /// 1秒待って、擬似的にフェッチしていることにする
    await Future<void>.delayed(const Duration(seconds: 1));
    final nextFirstNumber = _numbers.isEmpty ? 0 : _numbers.last + 1;
    final newNumbers = List<int>.generate(
      40,
      (index) => nextFirstNumber + index,
    );
    setState(() {
      _loading = false;
      _numbers = [
        ..._numbers,
        ...newNumbers,
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: initiallyLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                if (index >= _numbers.length) {
                  /// _fetchNext では setState を呼び出しているので、
                  /// build プロセス中に呼び出すとエラーになる。
                  WidgetsBinding.instance!.addPostFrameCallback(
                    (_) {
                      _fetchNext();
                    },
                  );
                  return const SizedBox.shrink();
                }
                final number = _numbers[index];
                return _ListItem(
                  key: ValueKey(number),
                  number: number,
                );
              },
              itemCount: _numbers.length + 1,

              /// [cacheExtent] によって、ListView の ViewPort を上下に
              /// 仮想的に延長する
              ///
              /// デフォルトの値は 250.0
              cacheExtent: 800,
            ),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    required this.number,
    Key? key,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0,
          ),
        ),
      ),
      child: Text('Items of $number'),
    );
  }
}
