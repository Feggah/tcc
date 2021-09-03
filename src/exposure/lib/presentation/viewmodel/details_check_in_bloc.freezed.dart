// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'details_check_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailsCheckInEventTearOff {
  const _$DetailsCheckInEventTearOff();

  _DatePicked datePicked(String date) {
    return _DatePicked(
      date,
    );
  }

  _TimePicked timePicked(String time) {
    return _TimePicked(
      time,
    );
  }
}

/// @nodoc
const $DetailsCheckInEvent = _$DetailsCheckInEventTearOff();

/// @nodoc
mixin _$DetailsCheckInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) datePicked,
    required TResult Function(String time) timePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String date)? datePicked,
    TResult Function(String time)? timePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? datePicked,
    TResult Function(String time)? timePicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DatePicked value) datePicked,
    required TResult Function(_TimePicked value) timePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DatePicked value)? datePicked,
    TResult Function(_TimePicked value)? timePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DatePicked value)? datePicked,
    TResult Function(_TimePicked value)? timePicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCheckInEventCopyWith<$Res> {
  factory $DetailsCheckInEventCopyWith(
          DetailsCheckInEvent value, $Res Function(DetailsCheckInEvent) then) =
      _$DetailsCheckInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsCheckInEventCopyWithImpl<$Res>
    implements $DetailsCheckInEventCopyWith<$Res> {
  _$DetailsCheckInEventCopyWithImpl(this._value, this._then);

  final DetailsCheckInEvent _value;
  // ignore: unused_field
  final $Res Function(DetailsCheckInEvent) _then;
}

/// @nodoc
abstract class _$DatePickedCopyWith<$Res> {
  factory _$DatePickedCopyWith(
          _DatePicked value, $Res Function(_DatePicked) then) =
      __$DatePickedCopyWithImpl<$Res>;
  $Res call({String date});
}

/// @nodoc
class __$DatePickedCopyWithImpl<$Res>
    extends _$DetailsCheckInEventCopyWithImpl<$Res>
    implements _$DatePickedCopyWith<$Res> {
  __$DatePickedCopyWithImpl(
      _DatePicked _value, $Res Function(_DatePicked) _then)
      : super(_value, (v) => _then(v as _DatePicked));

  @override
  _DatePicked get _value => super._value as _DatePicked;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_DatePicked(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DatePicked implements _DatePicked {
  const _$_DatePicked(this.date);

  @override
  final String date;

  @override
  String toString() {
    return 'DetailsCheckInEvent.datePicked(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DatePicked &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$DatePickedCopyWith<_DatePicked> get copyWith =>
      __$DatePickedCopyWithImpl<_DatePicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) datePicked,
    required TResult Function(String time) timePicked,
  }) {
    return datePicked(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String date)? datePicked,
    TResult Function(String time)? timePicked,
  }) {
    return datePicked?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? datePicked,
    TResult Function(String time)? timePicked,
    required TResult orElse(),
  }) {
    if (datePicked != null) {
      return datePicked(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DatePicked value) datePicked,
    required TResult Function(_TimePicked value) timePicked,
  }) {
    return datePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DatePicked value)? datePicked,
    TResult Function(_TimePicked value)? timePicked,
  }) {
    return datePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DatePicked value)? datePicked,
    TResult Function(_TimePicked value)? timePicked,
    required TResult orElse(),
  }) {
    if (datePicked != null) {
      return datePicked(this);
    }
    return orElse();
  }
}

abstract class _DatePicked implements DetailsCheckInEvent {
  const factory _DatePicked(String date) = _$_DatePicked;

  String get date => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DatePickedCopyWith<_DatePicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TimePickedCopyWith<$Res> {
  factory _$TimePickedCopyWith(
          _TimePicked value, $Res Function(_TimePicked) then) =
      __$TimePickedCopyWithImpl<$Res>;
  $Res call({String time});
}

/// @nodoc
class __$TimePickedCopyWithImpl<$Res>
    extends _$DetailsCheckInEventCopyWithImpl<$Res>
    implements _$TimePickedCopyWith<$Res> {
  __$TimePickedCopyWithImpl(
      _TimePicked _value, $Res Function(_TimePicked) _then)
      : super(_value, (v) => _then(v as _TimePicked));

  @override
  _TimePicked get _value => super._value as _TimePicked;

  @override
  $Res call({
    Object? time = freezed,
  }) {
    return _then(_TimePicked(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TimePicked implements _TimePicked {
  const _$_TimePicked(this.time);

  @override
  final String time;

  @override
  String toString() {
    return 'DetailsCheckInEvent.timePicked(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimePicked &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$TimePickedCopyWith<_TimePicked> get copyWith =>
      __$TimePickedCopyWithImpl<_TimePicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) datePicked,
    required TResult Function(String time) timePicked,
  }) {
    return timePicked(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String date)? datePicked,
    TResult Function(String time)? timePicked,
  }) {
    return timePicked?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? datePicked,
    TResult Function(String time)? timePicked,
    required TResult orElse(),
  }) {
    if (timePicked != null) {
      return timePicked(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DatePicked value) datePicked,
    required TResult Function(_TimePicked value) timePicked,
  }) {
    return timePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DatePicked value)? datePicked,
    TResult Function(_TimePicked value)? timePicked,
  }) {
    return timePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DatePicked value)? datePicked,
    TResult Function(_TimePicked value)? timePicked,
    required TResult orElse(),
  }) {
    if (timePicked != null) {
      return timePicked(this);
    }
    return orElse();
  }
}

abstract class _TimePicked implements DetailsCheckInEvent {
  const factory _TimePicked(String time) = _$_TimePicked;

  String get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TimePickedCopyWith<_TimePicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DetailsCheckInStateTearOff {
  const _$DetailsCheckInStateTearOff();

  _DetailsCheckInState call(
      {required String dateUi,
      required String timeUi,
      required bool enableSaveButton,
      required int arrival,
      required int departure}) {
    return _DetailsCheckInState(
      dateUi: dateUi,
      timeUi: timeUi,
      enableSaveButton: enableSaveButton,
      arrival: arrival,
      departure: departure,
    );
  }
}

/// @nodoc
const $DetailsCheckInState = _$DetailsCheckInStateTearOff();

/// @nodoc
mixin _$DetailsCheckInState {
  String get dateUi => throw _privateConstructorUsedError;
  String get timeUi => throw _privateConstructorUsedError;
  bool get enableSaveButton => throw _privateConstructorUsedError;
  int get arrival => throw _privateConstructorUsedError;
  int get departure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsCheckInStateCopyWith<DetailsCheckInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCheckInStateCopyWith<$Res> {
  factory $DetailsCheckInStateCopyWith(
          DetailsCheckInState value, $Res Function(DetailsCheckInState) then) =
      _$DetailsCheckInStateCopyWithImpl<$Res>;
  $Res call(
      {String dateUi,
      String timeUi,
      bool enableSaveButton,
      int arrival,
      int departure});
}

/// @nodoc
class _$DetailsCheckInStateCopyWithImpl<$Res>
    implements $DetailsCheckInStateCopyWith<$Res> {
  _$DetailsCheckInStateCopyWithImpl(this._value, this._then);

  final DetailsCheckInState _value;
  // ignore: unused_field
  final $Res Function(DetailsCheckInState) _then;

  @override
  $Res call({
    Object? dateUi = freezed,
    Object? timeUi = freezed,
    Object? enableSaveButton = freezed,
    Object? arrival = freezed,
    Object? departure = freezed,
  }) {
    return _then(_value.copyWith(
      dateUi: dateUi == freezed
          ? _value.dateUi
          : dateUi // ignore: cast_nullable_to_non_nullable
              as String,
      timeUi: timeUi == freezed
          ? _value.timeUi
          : timeUi // ignore: cast_nullable_to_non_nullable
              as String,
      enableSaveButton: enableSaveButton == freezed
          ? _value.enableSaveButton
          : enableSaveButton // ignore: cast_nullable_to_non_nullable
              as bool,
      arrival: arrival == freezed
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as int,
      departure: departure == freezed
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DetailsCheckInStateCopyWith<$Res>
    implements $DetailsCheckInStateCopyWith<$Res> {
  factory _$DetailsCheckInStateCopyWith(_DetailsCheckInState value,
          $Res Function(_DetailsCheckInState) then) =
      __$DetailsCheckInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dateUi,
      String timeUi,
      bool enableSaveButton,
      int arrival,
      int departure});
}

/// @nodoc
class __$DetailsCheckInStateCopyWithImpl<$Res>
    extends _$DetailsCheckInStateCopyWithImpl<$Res>
    implements _$DetailsCheckInStateCopyWith<$Res> {
  __$DetailsCheckInStateCopyWithImpl(
      _DetailsCheckInState _value, $Res Function(_DetailsCheckInState) _then)
      : super(_value, (v) => _then(v as _DetailsCheckInState));

  @override
  _DetailsCheckInState get _value => super._value as _DetailsCheckInState;

  @override
  $Res call({
    Object? dateUi = freezed,
    Object? timeUi = freezed,
    Object? enableSaveButton = freezed,
    Object? arrival = freezed,
    Object? departure = freezed,
  }) {
    return _then(_DetailsCheckInState(
      dateUi: dateUi == freezed
          ? _value.dateUi
          : dateUi // ignore: cast_nullable_to_non_nullable
              as String,
      timeUi: timeUi == freezed
          ? _value.timeUi
          : timeUi // ignore: cast_nullable_to_non_nullable
              as String,
      enableSaveButton: enableSaveButton == freezed
          ? _value.enableSaveButton
          : enableSaveButton // ignore: cast_nullable_to_non_nullable
              as bool,
      arrival: arrival == freezed
          ? _value.arrival
          : arrival // ignore: cast_nullable_to_non_nullable
              as int,
      departure: departure == freezed
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DetailsCheckInState implements _DetailsCheckInState {
  const _$_DetailsCheckInState(
      {required this.dateUi,
      required this.timeUi,
      required this.enableSaveButton,
      required this.arrival,
      required this.departure});

  @override
  final String dateUi;
  @override
  final String timeUi;
  @override
  final bool enableSaveButton;
  @override
  final int arrival;
  @override
  final int departure;

  @override
  String toString() {
    return 'DetailsCheckInState(dateUi: $dateUi, timeUi: $timeUi, enableSaveButton: $enableSaveButton, arrival: $arrival, departure: $departure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailsCheckInState &&
            (identical(other.dateUi, dateUi) ||
                const DeepCollectionEquality().equals(other.dateUi, dateUi)) &&
            (identical(other.timeUi, timeUi) ||
                const DeepCollectionEquality().equals(other.timeUi, timeUi)) &&
            (identical(other.enableSaveButton, enableSaveButton) ||
                const DeepCollectionEquality()
                    .equals(other.enableSaveButton, enableSaveButton)) &&
            (identical(other.arrival, arrival) ||
                const DeepCollectionEquality()
                    .equals(other.arrival, arrival)) &&
            (identical(other.departure, departure) ||
                const DeepCollectionEquality()
                    .equals(other.departure, departure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateUi) ^
      const DeepCollectionEquality().hash(timeUi) ^
      const DeepCollectionEquality().hash(enableSaveButton) ^
      const DeepCollectionEquality().hash(arrival) ^
      const DeepCollectionEquality().hash(departure);

  @JsonKey(ignore: true)
  @override
  _$DetailsCheckInStateCopyWith<_DetailsCheckInState> get copyWith =>
      __$DetailsCheckInStateCopyWithImpl<_DetailsCheckInState>(
          this, _$identity);
}

abstract class _DetailsCheckInState implements DetailsCheckInState {
  const factory _DetailsCheckInState(
      {required String dateUi,
      required String timeUi,
      required bool enableSaveButton,
      required int arrival,
      required int departure}) = _$_DetailsCheckInState;

  @override
  String get dateUi => throw _privateConstructorUsedError;
  @override
  String get timeUi => throw _privateConstructorUsedError;
  @override
  bool get enableSaveButton => throw _privateConstructorUsedError;
  @override
  int get arrival => throw _privateConstructorUsedError;
  @override
  int get departure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailsCheckInStateCopyWith<_DetailsCheckInState> get copyWith =>
      throw _privateConstructorUsedError;
}
