import 'package:freezed_annotation/freezed_annotation.dart';

part 'numbers_state.freezed.dart';

@freezed
class NumbersState with _$NumbersState {
  factory NumbersState({
    @Default(<int>[]) List<int> numbers,
    @Default(true) bool loading,
    @Default(true) bool hasNext,
  }) = _NumbersState;

  NumbersState._();

  late final bool initiallyLoading = numbers.isEmpty && loading;
}
