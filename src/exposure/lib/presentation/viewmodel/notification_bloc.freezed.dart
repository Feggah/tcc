// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationEventTearOff {
  const _$NotificationEventTearOff();

  _Display display(RemoteNotification? notification) {
    return _Display(
      notification,
    );
  }

  _SaveLastSentTime saveLastSentTime() {
    return const _SaveLastSentTime();
  }

  _WatchNotifications watchNotifications() {
    return const _WatchNotifications();
  }
}

/// @nodoc
const $NotificationEvent = _$NotificationEventTearOff();

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoteNotification? notification) display,
    required TResult Function() saveLastSentTime,
    required TResult Function() watchNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RemoteNotification? notification)? display,
    TResult Function()? saveLastSentTime,
    TResult Function()? watchNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteNotification? notification)? display,
    TResult Function()? saveLastSentTime,
    TResult Function()? watchNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Display value) display,
    required TResult Function(_SaveLastSentTime value) saveLastSentTime,
    required TResult Function(_WatchNotifications value) watchNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Display value)? display,
    TResult Function(_SaveLastSentTime value)? saveLastSentTime,
    TResult Function(_WatchNotifications value)? watchNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Display value)? display,
    TResult Function(_SaveLastSentTime value)? saveLastSentTime,
    TResult Function(_WatchNotifications value)? watchNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  final NotificationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationEvent) _then;
}

/// @nodoc
abstract class _$DisplayCopyWith<$Res> {
  factory _$DisplayCopyWith(_Display value, $Res Function(_Display) then) =
      __$DisplayCopyWithImpl<$Res>;
  $Res call({RemoteNotification? notification});
}

/// @nodoc
class __$DisplayCopyWithImpl<$Res> extends _$NotificationEventCopyWithImpl<$Res>
    implements _$DisplayCopyWith<$Res> {
  __$DisplayCopyWithImpl(_Display _value, $Res Function(_Display) _then)
      : super(_value, (v) => _then(v as _Display));

  @override
  _Display get _value => super._value as _Display;

  @override
  $Res call({
    Object? notification = freezed,
  }) {
    return _then(_Display(
      notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as RemoteNotification?,
    ));
  }
}

/// @nodoc

class _$_Display implements _Display {
  const _$_Display(this.notification);

  @override
  final RemoteNotification? notification;

  @override
  String toString() {
    return 'NotificationEvent.display(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Display &&
            (identical(other.notification, notification) ||
                const DeepCollectionEquality()
                    .equals(other.notification, notification)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notification);

  @JsonKey(ignore: true)
  @override
  _$DisplayCopyWith<_Display> get copyWith =>
      __$DisplayCopyWithImpl<_Display>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoteNotification? notification) display,
    required TResult Function() saveLastSentTime,
    required TResult Function() watchNotifications,
  }) {
    return display(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RemoteNotification? notification)? display,
    TResult Function()? saveLastSentTime,
    TResult Function()? watchNotifications,
  }) {
    return display?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteNotification? notification)? display,
    TResult Function()? saveLastSentTime,
    TResult Function()? watchNotifications,
    required TResult orElse(),
  }) {
    if (display != null) {
      return display(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Display value) display,
    required TResult Function(_SaveLastSentTime value) saveLastSentTime,
    required TResult Function(_WatchNotifications value) watchNotifications,
  }) {
    return display(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Display value)? display,
    TResult Function(_SaveLastSentTime value)? saveLastSentTime,
    TResult Function(_WatchNotifications value)? watchNotifications,
  }) {
    return display?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Display value)? display,
    TResult Function(_SaveLastSentTime value)? saveLastSentTime,
    TResult Function(_WatchNotifications value)? watchNotifications,
    required TResult orElse(),
  }) {
    if (display != null) {
      return display(this);
    }
    return orElse();
  }
}

abstract class _Display implements NotificationEvent {
  const factory _Display(RemoteNotification? notification) = _$_Display;

  RemoteNotification? get notification => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DisplayCopyWith<_Display> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveLastSentTimeCopyWith<$Res> {
  factory _$SaveLastSentTimeCopyWith(
          _SaveLastSentTime value, $Res Function(_SaveLastSentTime) then) =
      __$SaveLastSentTimeCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveLastSentTimeCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$SaveLastSentTimeCopyWith<$Res> {
  __$SaveLastSentTimeCopyWithImpl(
      _SaveLastSentTime _value, $Res Function(_SaveLastSentTime) _then)
      : super(_value, (v) => _then(v as _SaveLastSentTime));

  @override
  _SaveLastSentTime get _value => super._value as _SaveLastSentTime;
}

/// @nodoc

class _$_SaveLastSentTime implements _SaveLastSentTime {
  const _$_SaveLastSentTime();

  @override
  String toString() {
    return 'NotificationEvent.saveLastSentTime()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SaveLastSentTime);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoteNotification? notification) display,
    required TResult Function() saveLastSentTime,
    required TResult Function() watchNotifications,
  }) {
    return saveLastSentTime();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RemoteNotification? notification)? display,
    TResult Function()? saveLastSentTime,
    TResult Function()? watchNotifications,
  }) {
    return saveLastSentTime?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteNotification? notification)? display,
    TResult Function()? saveLastSentTime,
    TResult Function()? watchNotifications,
    required TResult orElse(),
  }) {
    if (saveLastSentTime != null) {
      return saveLastSentTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Display value) display,
    required TResult Function(_SaveLastSentTime value) saveLastSentTime,
    required TResult Function(_WatchNotifications value) watchNotifications,
  }) {
    return saveLastSentTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Display value)? display,
    TResult Function(_SaveLastSentTime value)? saveLastSentTime,
    TResult Function(_WatchNotifications value)? watchNotifications,
  }) {
    return saveLastSentTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Display value)? display,
    TResult Function(_SaveLastSentTime value)? saveLastSentTime,
    TResult Function(_WatchNotifications value)? watchNotifications,
    required TResult orElse(),
  }) {
    if (saveLastSentTime != null) {
      return saveLastSentTime(this);
    }
    return orElse();
  }
}

abstract class _SaveLastSentTime implements NotificationEvent {
  const factory _SaveLastSentTime() = _$_SaveLastSentTime;
}

/// @nodoc
abstract class _$WatchNotificationsCopyWith<$Res> {
  factory _$WatchNotificationsCopyWith(
          _WatchNotifications value, $Res Function(_WatchNotifications) then) =
      __$WatchNotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchNotificationsCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$WatchNotificationsCopyWith<$Res> {
  __$WatchNotificationsCopyWithImpl(
      _WatchNotifications _value, $Res Function(_WatchNotifications) _then)
      : super(_value, (v) => _then(v as _WatchNotifications));

  @override
  _WatchNotifications get _value => super._value as _WatchNotifications;
}

/// @nodoc

class _$_WatchNotifications implements _WatchNotifications {
  const _$_WatchNotifications();

  @override
  String toString() {
    return 'NotificationEvent.watchNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoteNotification? notification) display,
    required TResult Function() saveLastSentTime,
    required TResult Function() watchNotifications,
  }) {
    return watchNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RemoteNotification? notification)? display,
    TResult Function()? saveLastSentTime,
    TResult Function()? watchNotifications,
  }) {
    return watchNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteNotification? notification)? display,
    TResult Function()? saveLastSentTime,
    TResult Function()? watchNotifications,
    required TResult orElse(),
  }) {
    if (watchNotifications != null) {
      return watchNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Display value) display,
    required TResult Function(_SaveLastSentTime value) saveLastSentTime,
    required TResult Function(_WatchNotifications value) watchNotifications,
  }) {
    return watchNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Display value)? display,
    TResult Function(_SaveLastSentTime value)? saveLastSentTime,
    TResult Function(_WatchNotifications value)? watchNotifications,
  }) {
    return watchNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Display value)? display,
    TResult Function(_SaveLastSentTime value)? saveLastSentTime,
    TResult Function(_WatchNotifications value)? watchNotifications,
    required TResult orElse(),
  }) {
    if (watchNotifications != null) {
      return watchNotifications(this);
    }
    return orElse();
  }
}

abstract class _WatchNotifications implements NotificationEvent {
  const factory _WatchNotifications() = _$_WatchNotifications;
}

/// @nodoc
class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Failed failed(Failure failure) {
    return _Failed(
      failure,
    );
  }

  _Watch watch() {
    return const _Watch();
  }

  _Received received(PushNotification notification) {
    return _Received(
      notification,
    );
  }

  _Sent sent() {
    return const _Sent();
  }

  _Completed completed() {
    return const _Completed();
  }
}

/// @nodoc
const $NotificationState = _$NotificationStateTearOff();

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) failed,
    required TResult Function() watch,
    required TResult Function(PushNotification notification) received,
    required TResult Function() sent,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Watch value) watch,
    required TResult Function(_Received value) received,
    required TResult Function(_Sent value) sent,
    required TResult Function(_Completed value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NotificationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) failed,
    required TResult Function() watch,
    required TResult Function(PushNotification notification) received,
    required TResult Function() sent,
    required TResult Function() completed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Watch value) watch,
    required TResult Function(_Received value) received,
    required TResult Function(_Sent value) sent,
    required TResult Function(_Completed value) completed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'NotificationState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) failed,
    required TResult Function() watch,
    required TResult Function(PushNotification notification) received,
    required TResult Function() sent,
    required TResult Function() completed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Watch value) watch,
    required TResult Function(_Received value) received,
    required TResult Function(_Sent value) sent,
    required TResult Function(_Completed value) completed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements NotificationState {
  const factory _Failed(Failure failure) = _$_Failed;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchCopyWith<$Res> {
  factory _$WatchCopyWith(_Watch value, $Res Function(_Watch) then) =
      __$WatchCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
    implements _$WatchCopyWith<$Res> {
  __$WatchCopyWithImpl(_Watch _value, $Res Function(_Watch) _then)
      : super(_value, (v) => _then(v as _Watch));

  @override
  _Watch get _value => super._value as _Watch;
}

/// @nodoc

class _$_Watch implements _Watch {
  const _$_Watch();

  @override
  String toString() {
    return 'NotificationState.watch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Watch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) failed,
    required TResult Function() watch,
    required TResult Function(PushNotification notification) received,
    required TResult Function() sent,
    required TResult Function() completed,
  }) {
    return watch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
  }) {
    return watch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Watch value) watch,
    required TResult Function(_Received value) received,
    required TResult Function(_Sent value) sent,
    required TResult Function(_Completed value) completed,
  }) {
    return watch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
  }) {
    return watch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch(this);
    }
    return orElse();
  }
}

abstract class _Watch implements NotificationState {
  const factory _Watch() = _$_Watch;
}

/// @nodoc
abstract class _$ReceivedCopyWith<$Res> {
  factory _$ReceivedCopyWith(_Received value, $Res Function(_Received) then) =
      __$ReceivedCopyWithImpl<$Res>;
  $Res call({PushNotification notification});
}

/// @nodoc
class __$ReceivedCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$ReceivedCopyWith<$Res> {
  __$ReceivedCopyWithImpl(_Received _value, $Res Function(_Received) _then)
      : super(_value, (v) => _then(v as _Received));

  @override
  _Received get _value => super._value as _Received;

  @override
  $Res call({
    Object? notification = freezed,
  }) {
    return _then(_Received(
      notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as PushNotification,
    ));
  }
}

/// @nodoc

class _$_Received implements _Received {
  const _$_Received(this.notification);

  @override
  final PushNotification notification;

  @override
  String toString() {
    return 'NotificationState.received(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Received &&
            (identical(other.notification, notification) ||
                const DeepCollectionEquality()
                    .equals(other.notification, notification)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notification);

  @JsonKey(ignore: true)
  @override
  _$ReceivedCopyWith<_Received> get copyWith =>
      __$ReceivedCopyWithImpl<_Received>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) failed,
    required TResult Function() watch,
    required TResult Function(PushNotification notification) received,
    required TResult Function() sent,
    required TResult Function() completed,
  }) {
    return received(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
  }) {
    return received?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Watch value) watch,
    required TResult Function(_Received value) received,
    required TResult Function(_Sent value) sent,
    required TResult Function(_Completed value) completed,
  }) {
    return received(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
  }) {
    return received?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class _Received implements NotificationState {
  const factory _Received(PushNotification notification) = _$_Received;

  PushNotification get notification => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReceivedCopyWith<_Received> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SentCopyWith<$Res> {
  factory _$SentCopyWith(_Sent value, $Res Function(_Sent) then) =
      __$SentCopyWithImpl<$Res>;
}

/// @nodoc
class __$SentCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
    implements _$SentCopyWith<$Res> {
  __$SentCopyWithImpl(_Sent _value, $Res Function(_Sent) _then)
      : super(_value, (v) => _then(v as _Sent));

  @override
  _Sent get _value => super._value as _Sent;
}

/// @nodoc

class _$_Sent implements _Sent {
  const _$_Sent();

  @override
  String toString() {
    return 'NotificationState.sent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Sent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) failed,
    required TResult Function() watch,
    required TResult Function(PushNotification notification) received,
    required TResult Function() sent,
    required TResult Function() completed,
  }) {
    return sent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
  }) {
    return sent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Watch value) watch,
    required TResult Function(_Received value) received,
    required TResult Function(_Sent value) sent,
    required TResult Function(_Completed value) completed,
  }) {
    return sent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
  }) {
    return sent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(this);
    }
    return orElse();
  }
}

abstract class _Sent implements NotificationState {
  const factory _Sent() = _$_Sent;
}

/// @nodoc
abstract class _$CompletedCopyWith<$Res> {
  factory _$CompletedCopyWith(
          _Completed value, $Res Function(_Completed) then) =
      __$CompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CompletedCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(_Completed _value, $Res Function(_Completed) _then)
      : super(_value, (v) => _then(v as _Completed));

  @override
  _Completed get _value => super._value as _Completed;
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed();

  @override
  String toString() {
    return 'NotificationState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Completed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) failed,
    required TResult Function() watch,
    required TResult Function(PushNotification notification) received,
    required TResult Function() sent,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? failed,
    TResult Function()? watch,
    TResult Function(PushNotification notification)? received,
    TResult Function()? sent,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Watch value) watch,
    required TResult Function(_Received value) received,
    required TResult Function(_Sent value) sent,
    required TResult Function(_Completed value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    TResult Function(_Sent value)? sent,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements NotificationState {
  const factory _Completed() = _$_Completed;
}
