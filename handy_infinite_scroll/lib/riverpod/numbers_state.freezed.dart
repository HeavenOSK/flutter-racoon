// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'numbers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NumbersStateTearOff {
  const _$NumbersStateTearOff();

  _NumbersState call(
      {List<int> numbers = const <int>[],
      bool loading = true,
      bool hasNext = true}) {
    return _NumbersState(
      numbers: numbers,
      loading: loading,
      hasNext: hasNext,
    );
  }
}

/// @nodoc
const $NumbersState = _$NumbersStateTearOff();

/// @nodoc
mixin _$NumbersState {
  List<int> get numbers => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumbersStateCopyWith<NumbersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumbersStateCopyWith<$Res> {
  factory $NumbersStateCopyWith(
          NumbersState value, $Res Function(NumbersState) then) =
      _$NumbersStateCopyWithImpl<$Res>;
  $Res call({List<int> numbers, bool loading, bool hasNext});
}

/// @nodoc
class _$NumbersStateCopyWithImpl<$Res> implements $NumbersStateCopyWith<$Res> {
  _$NumbersStateCopyWithImpl(this._value, this._then);

  final NumbersState _value;
  // ignore: unused_field
  final $Res Function(NumbersState) _then;

  @override
  $Res call({
    Object? numbers = freezed,
    Object? loading = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_value.copyWith(
      numbers: numbers == freezed
          ? _value.numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NumbersStateCopyWith<$Res>
    implements $NumbersStateCopyWith<$Res> {
  factory _$NumbersStateCopyWith(
          _NumbersState value, $Res Function(_NumbersState) then) =
      __$NumbersStateCopyWithImpl<$Res>;
  @override
  $Res call({List<int> numbers, bool loading, bool hasNext});
}

/// @nodoc
class __$NumbersStateCopyWithImpl<$Res> extends _$NumbersStateCopyWithImpl<$Res>
    implements _$NumbersStateCopyWith<$Res> {
  __$NumbersStateCopyWithImpl(
      _NumbersState _value, $Res Function(_NumbersState) _then)
      : super(_value, (v) => _then(v as _NumbersState));

  @override
  _NumbersState get _value => super._value as _NumbersState;

  @override
  $Res call({
    Object? numbers = freezed,
    Object? loading = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_NumbersState(
      numbers: numbers == freezed
          ? _value.numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NumbersState extends _NumbersState {
  _$_NumbersState(
      {this.numbers = const <int>[], this.loading = true, this.hasNext = true})
      : super._();

  @JsonKey(defaultValue: const <int>[])
  @override
  final List<int> numbers;
  @JsonKey(defaultValue: true)
  @override
  final bool loading;
  @JsonKey(defaultValue: true)
  @override
  final bool hasNext;

  @override
  String toString() {
    return 'NumbersState(numbers: $numbers, loading: $loading, hasNext: $hasNext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NumbersState &&
            (identical(other.numbers, numbers) ||
                const DeepCollectionEquality()
                    .equals(other.numbers, numbers)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.hasNext, hasNext) ||
                const DeepCollectionEquality().equals(other.hasNext, hasNext)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(numbers) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(hasNext);

  @JsonKey(ignore: true)
  @override
  _$NumbersStateCopyWith<_NumbersState> get copyWith =>
      __$NumbersStateCopyWithImpl<_NumbersState>(this, _$identity);
}

abstract class _NumbersState extends NumbersState {
  factory _NumbersState({List<int> numbers, bool loading, bool hasNext}) =
      _$_NumbersState;
  _NumbersState._() : super._();

  @override
  List<int> get numbers => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get hasNext => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NumbersStateCopyWith<_NumbersState> get copyWith =>
      throw _privateConstructorUsedError;
}
