// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'checkbox_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckBoxEventTearOff {
  const _$CheckBoxEventTearOff();

  _ConfirmCheckBox changeCheckBox(bool value) {
    return _ConfirmCheckBox(
      value,
    );
  }
}

/// @nodoc
const $CheckBoxEvent = _$CheckBoxEventTearOff();

/// @nodoc
mixin _$CheckBoxEvent {
  bool get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeCheckBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool value)? changeCheckBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeCheckBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfirmCheckBox value) changeCheckBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConfirmCheckBox value)? changeCheckBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfirmCheckBox value)? changeCheckBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckBoxEventCopyWith<CheckBoxEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckBoxEventCopyWith<$Res> {
  factory $CheckBoxEventCopyWith(
          CheckBoxEvent value, $Res Function(CheckBoxEvent) then) =
      _$CheckBoxEventCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class _$CheckBoxEventCopyWithImpl<$Res>
    implements $CheckBoxEventCopyWith<$Res> {
  _$CheckBoxEventCopyWithImpl(this._value, this._then);

  final CheckBoxEvent _value;
  // ignore: unused_field
  final $Res Function(CheckBoxEvent) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ConfirmCheckBoxCopyWith<$Res>
    implements $CheckBoxEventCopyWith<$Res> {
  factory _$ConfirmCheckBoxCopyWith(
          _ConfirmCheckBox value, $Res Function(_ConfirmCheckBox) then) =
      __$ConfirmCheckBoxCopyWithImpl<$Res>;
  @override
  $Res call({bool value});
}

/// @nodoc
class __$ConfirmCheckBoxCopyWithImpl<$Res>
    extends _$CheckBoxEventCopyWithImpl<$Res>
    implements _$ConfirmCheckBoxCopyWith<$Res> {
  __$ConfirmCheckBoxCopyWithImpl(
      _ConfirmCheckBox _value, $Res Function(_ConfirmCheckBox) _then)
      : super(_value, (v) => _then(v as _ConfirmCheckBox));

  @override
  _ConfirmCheckBox get _value => super._value as _ConfirmCheckBox;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ConfirmCheckBox(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConfirmCheckBox implements _ConfirmCheckBox {
  const _$_ConfirmCheckBox(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'CheckBoxEvent.changeCheckBox(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmCheckBox &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ConfirmCheckBoxCopyWith<_ConfirmCheckBox> get copyWith =>
      __$ConfirmCheckBoxCopyWithImpl<_ConfirmCheckBox>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) changeCheckBox,
  }) {
    return changeCheckBox(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool value)? changeCheckBox,
  }) {
    return changeCheckBox?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? changeCheckBox,
    required TResult orElse(),
  }) {
    if (changeCheckBox != null) {
      return changeCheckBox(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfirmCheckBox value) changeCheckBox,
  }) {
    return changeCheckBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ConfirmCheckBox value)? changeCheckBox,
  }) {
    return changeCheckBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfirmCheckBox value)? changeCheckBox,
    required TResult orElse(),
  }) {
    if (changeCheckBox != null) {
      return changeCheckBox(this);
    }
    return orElse();
  }
}

abstract class _ConfirmCheckBox implements CheckBoxEvent {
  const factory _ConfirmCheckBox(bool value) = _$_ConfirmCheckBox;

  @override
  bool get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConfirmCheckBoxCopyWith<_ConfirmCheckBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CheckBoxStateTearOff {
  const _$CheckBoxStateTearOff();

  _CheckBoxState call({required bool enableButton}) {
    return _CheckBoxState(
      enableButton: enableButton,
    );
  }
}

/// @nodoc
const $CheckBoxState = _$CheckBoxStateTearOff();

/// @nodoc
mixin _$CheckBoxState {
  bool get enableButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckBoxStateCopyWith<CheckBoxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckBoxStateCopyWith<$Res> {
  factory $CheckBoxStateCopyWith(
          CheckBoxState value, $Res Function(CheckBoxState) then) =
      _$CheckBoxStateCopyWithImpl<$Res>;
  $Res call({bool enableButton});
}

/// @nodoc
class _$CheckBoxStateCopyWithImpl<$Res>
    implements $CheckBoxStateCopyWith<$Res> {
  _$CheckBoxStateCopyWithImpl(this._value, this._then);

  final CheckBoxState _value;
  // ignore: unused_field
  final $Res Function(CheckBoxState) _then;

  @override
  $Res call({
    Object? enableButton = freezed,
  }) {
    return _then(_value.copyWith(
      enableButton: enableButton == freezed
          ? _value.enableButton
          : enableButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CheckBoxStateCopyWith<$Res>
    implements $CheckBoxStateCopyWith<$Res> {
  factory _$CheckBoxStateCopyWith(
          _CheckBoxState value, $Res Function(_CheckBoxState) then) =
      __$CheckBoxStateCopyWithImpl<$Res>;
  @override
  $Res call({bool enableButton});
}

/// @nodoc
class __$CheckBoxStateCopyWithImpl<$Res>
    extends _$CheckBoxStateCopyWithImpl<$Res>
    implements _$CheckBoxStateCopyWith<$Res> {
  __$CheckBoxStateCopyWithImpl(
      _CheckBoxState _value, $Res Function(_CheckBoxState) _then)
      : super(_value, (v) => _then(v as _CheckBoxState));

  @override
  _CheckBoxState get _value => super._value as _CheckBoxState;

  @override
  $Res call({
    Object? enableButton = freezed,
  }) {
    return _then(_CheckBoxState(
      enableButton: enableButton == freezed
          ? _value.enableButton
          : enableButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CheckBoxState implements _CheckBoxState {
  const _$_CheckBoxState({required this.enableButton});

  @override
  final bool enableButton;

  @override
  String toString() {
    return 'CheckBoxState(enableButton: $enableButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckBoxState &&
            (identical(other.enableButton, enableButton) ||
                const DeepCollectionEquality()
                    .equals(other.enableButton, enableButton)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(enableButton);

  @JsonKey(ignore: true)
  @override
  _$CheckBoxStateCopyWith<_CheckBoxState> get copyWith =>
      __$CheckBoxStateCopyWithImpl<_CheckBoxState>(this, _$identity);
}

abstract class _CheckBoxState implements CheckBoxState {
  const factory _CheckBoxState({required bool enableButton}) = _$_CheckBoxState;

  @override
  bool get enableButton => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckBoxStateCopyWith<_CheckBoxState> get copyWith =>
      throw _privateConstructorUsedError;
}
