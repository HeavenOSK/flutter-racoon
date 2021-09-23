import 'package:handy_infinite_scroll/riverpod/numbers_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final numbersControllerProvider =
    StateNotifierProvider<NumbersController, NumbersState>(
  (_) => NumbersController(),
);

class NumbersController extends StateNotifier<NumbersState> {
  NumbersController()
      : super(
          NumbersState(),
        ) {
    _fetchNext();
  }

  /// 同期的に state を更新しているので
  /// build メソッドで直接呼び出すとエラーになる
  void fetchNext() {
    if (state.loading) {
      return;
    }
    state = state.copyWith(
      loading: true,
    );
    _fetchNext();
  }

  Future<void> _fetchNext() async {
    /// 2秒待って、擬似的にフェッチしていることにする
    await Future<void>.delayed(const Duration(seconds: 2));
    final nextFirstNumber = state.numbers.isEmpty ? 0 : state.numbers.last + 1;
    final numbers = List<int>.generate(
      20,
      (index) => nextFirstNumber + index,
    );
    state = state.copyWith(
      numbers: [
        ...state.numbers,
        ...numbers,
      ],
      loading: false,
    );
  }
}
