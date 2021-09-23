import 'package:flutter/material.dart';
import 'package:handy_infinite_scroll/riverpod/numbers_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodHome extends ConsumerWidget {
  const RiverpodHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(numbersControllerProvider);

    return Scaffold(
      appBar: AppBar(),
      body: state.initiallyLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                if (index >= state.numbers.length) {
                  /// _fetchNext では同期的に state を更新しているので
                  /// build プロセス中に呼び出すとエラーになる。
                  WidgetsBinding.instance!.addPostFrameCallback(
                    (_) {
                      ref.read(numbersControllerProvider.notifier).fetchNext();
                    },
                  );
                  return const SizedBox.shrink();
                }
                final number = state.numbers[index];
                return _ListItem(
                  key: ValueKey(number),
                  number: number,
                );
              },
              itemCount: state.numbers.length + 1,

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
