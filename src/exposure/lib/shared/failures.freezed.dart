// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  InternalError internalError() {
    return const InternalError();
  }

  NoInternetConnection noInternetConnection() {
    return const NoInternetConnection();
  }

  AlreadySaved alreadySaved() {
    return const AlreadySaved();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() internalError,
    required TResult Function() noInternetConnection,
    required TResult Function() alreadySaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? internalError,
    TResult Function()? noInternetConnection,
    TResult Function()? alreadySaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? internalError,
    TResult Function()? noInternetConnection,
    TResult Function()? alreadySaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InternalError value) internalError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(AlreadySaved value) alreadySaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InternalError value)? internalError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(AlreadySaved value)? alreadySaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternalError value)? internalError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(AlreadySaved value)? alreadySaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $InternalErrorCopyWith<$Res> {
  factory $InternalErrorCopyWith(
          InternalError value, $Res Function(InternalError) then) =
      _$InternalErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternalErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $InternalErrorCopyWith<$Res> {
  _$InternalErrorCopyWithImpl(
      InternalError _value, $Res Function(InternalError) _then)
      : super(_value, (v) => _then(v as InternalError));

  @override
  InternalError get _value => super._value as InternalError;
}

/// @nodoc

class _$InternalError implements InternalError {
  const _$InternalError();

  @override
  String toString() {
    return 'Failure.internalError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InternalError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() internalError,
    required TResult Function() noInternetConnection,
    required TResult Function() alreadySaved,
  }) {
    return internalError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? internalError,
    TResult Function()? noInternetConnection,
    TResult Function()? alreadySaved,
  }) {
    return internalError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? internalError,
    TResult Function()? noInternetConnection,
    TResult Function()? alreadySaved,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InternalError value) internalError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(AlreadySaved value) alreadySaved,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InternalError value)? internalError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(AlreadySaved value)? alreadySaved,
  }) {
    return internalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternalError value)? internalError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(AlreadySaved value)? alreadySaved,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalError implements Failure {
  const factory InternalError() = _$InternalError;
}

/// @nodoc
abstract class $NoInternetConnectionCopyWith<$Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection value,
          $Res Function(NoInternetConnection) then) =
      _$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoInternetConnectionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $NoInternetConnectionCopyWith<$Res> {
  _$NoInternetConnectionCopyWithImpl(
      NoInternetConnection _value, $Res Function(NoInternetConnection) _then)
      : super(_value, (v) => _then(v as NoInternetConnection));

  @override
  NoInternetConnection get _value => super._value as NoInternetConnection;
}

/// @nodoc

class _$NoInternetConnection implements NoInternetConnection {
  const _$NoInternetConnection();

  @override
  String toString() {
    return 'Failure.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() internalError,
    required TResult Function() noInternetConnection,
    required TResult Function() alreadySaved,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? internalError,
    TResult Function()? noInternetConnection,
    TResult Function()? alreadySaved,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? internalError,
    TResult Function()? noInternetConnection,
    TResult Function()? alreadySaved,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InternalError value) internalError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(AlreadySaved value) alreadySaved,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InternalError value)? internalError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(AlreadySaved value)? alreadySaved,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternalError value)? internalError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(AlreadySaved value)? alreadySaved,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements Failure {
  const factory NoInternetConnection() = _$NoInternetConnection;
}

/// @nodoc
abstract class $AlreadySavedCopyWith<$Res> {
  factory $AlreadySavedCopyWith(
          AlreadySaved value, $Res Function(AlreadySaved) then) =
      _$AlreadySavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AlreadySavedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $AlreadySavedCopyWith<$Res> {
  _$AlreadySavedCopyWithImpl(
      AlreadySaved _value, $Res Function(AlreadySaved) _then)
      : super(_value, (v) => _then(v as AlreadySaved));

  @override
  AlreadySaved get _value => super._value as AlreadySaved;
}

/// @nodoc

class _$AlreadySaved implements AlreadySaved {
  const _$AlreadySaved();

  @override
  String toString() {
    return 'Failure.alreadySaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AlreadySaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() internalError,
    required TResult Function() noInternetConnection,
    required TResult Function() alreadySaved,
  }) {
    return alreadySaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? internalError,
    TResult Function()? noInternetConnection,
    TResult Function()? alreadySaved,
  }) {
    return alreadySaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? internalError,
    TResult Function()? noInternetConnection,
    TResult Function()? alreadySaved,
    required TResult orElse(),
  }) {
    if (alreadySaved != null) {
      return alreadySaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InternalError value) internalError,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(AlreadySaved value) alreadySaved,
  }) {
    return alreadySaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InternalError value)? internalError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(AlreadySaved value)? alreadySaved,
  }) {
    return alreadySaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternalError value)? internalError,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(AlreadySaved value)? alreadySaved,
    required TResult orElse(),
  }) {
    if (alreadySaved != null) {
      return alreadySaved(this);
    }
    return orElse();
  }
}

abstract class AlreadySaved implements Failure {
  const factory AlreadySaved() = _$AlreadySaved;
}
