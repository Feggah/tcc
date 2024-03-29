// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailsEventTearOff {
  const _$DetailsEventTearOff();

  _LoadDetails loadDetails(String id) {
    return _LoadDetails(
      id,
    );
  }

  _SaveLocation saveLocation(Location location) {
    return _SaveLocation(
      location,
    );
  }
}

/// @nodoc
const $DetailsEvent = _$DetailsEventTearOff();

/// @nodoc
mixin _$DetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadDetails,
    required TResult Function(Location location) saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loadDetails,
    TResult Function(Location location)? saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadDetails,
    TResult Function(Location location)? saveLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetails value) loadDetails,
    required TResult Function(_SaveLocation value) saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadDetails value)? loadDetails,
    TResult Function(_SaveLocation value)? saveLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetails value)? loadDetails,
    TResult Function(_SaveLocation value)? saveLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsEventCopyWith<$Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent value, $Res Function(DetailsEvent) then) =
      _$DetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsEventCopyWithImpl<$Res> implements $DetailsEventCopyWith<$Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  final DetailsEvent _value;
  // ignore: unused_field
  final $Res Function(DetailsEvent) _then;
}

/// @nodoc
abstract class _$LoadDetailsCopyWith<$Res> {
  factory _$LoadDetailsCopyWith(
          _LoadDetails value, $Res Function(_LoadDetails) then) =
      __$LoadDetailsCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$LoadDetailsCopyWithImpl<$Res> extends _$DetailsEventCopyWithImpl<$Res>
    implements _$LoadDetailsCopyWith<$Res> {
  __$LoadDetailsCopyWithImpl(
      _LoadDetails _value, $Res Function(_LoadDetails) _then)
      : super(_value, (v) => _then(v as _LoadDetails));

  @override
  _LoadDetails get _value => super._value as _LoadDetails;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_LoadDetails(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadDetails implements _LoadDetails {
  const _$_LoadDetails(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DetailsEvent.loadDetails(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LoadDetailsCopyWith<_LoadDetails> get copyWith =>
      __$LoadDetailsCopyWithImpl<_LoadDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadDetails,
    required TResult Function(Location location) saveLocation,
  }) {
    return loadDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loadDetails,
    TResult Function(Location location)? saveLocation,
  }) {
    return loadDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadDetails,
    TResult Function(Location location)? saveLocation,
    required TResult orElse(),
  }) {
    if (loadDetails != null) {
      return loadDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetails value) loadDetails,
    required TResult Function(_SaveLocation value) saveLocation,
  }) {
    return loadDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadDetails value)? loadDetails,
    TResult Function(_SaveLocation value)? saveLocation,
  }) {
    return loadDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetails value)? loadDetails,
    TResult Function(_SaveLocation value)? saveLocation,
    required TResult orElse(),
  }) {
    if (loadDetails != null) {
      return loadDetails(this);
    }
    return orElse();
  }
}

abstract class _LoadDetails implements DetailsEvent {
  const factory _LoadDetails(String id) = _$_LoadDetails;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadDetailsCopyWith<_LoadDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveLocationCopyWith<$Res> {
  factory _$SaveLocationCopyWith(
          _SaveLocation value, $Res Function(_SaveLocation) then) =
      __$SaveLocationCopyWithImpl<$Res>;
  $Res call({Location location});
}

/// @nodoc
class __$SaveLocationCopyWithImpl<$Res> extends _$DetailsEventCopyWithImpl<$Res>
    implements _$SaveLocationCopyWith<$Res> {
  __$SaveLocationCopyWithImpl(
      _SaveLocation _value, $Res Function(_SaveLocation) _then)
      : super(_value, (v) => _then(v as _SaveLocation));

  @override
  _SaveLocation get _value => super._value as _SaveLocation;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_SaveLocation(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }
}

/// @nodoc

class _$_SaveLocation implements _SaveLocation {
  const _$_SaveLocation(this.location);

  @override
  final Location location;

  @override
  String toString() {
    return 'DetailsEvent.saveLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveLocation &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$SaveLocationCopyWith<_SaveLocation> get copyWith =>
      __$SaveLocationCopyWithImpl<_SaveLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadDetails,
    required TResult Function(Location location) saveLocation,
  }) {
    return saveLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loadDetails,
    TResult Function(Location location)? saveLocation,
  }) {
    return saveLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadDetails,
    TResult Function(Location location)? saveLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadDetails value) loadDetails,
    required TResult Function(_SaveLocation value) saveLocation,
  }) {
    return saveLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadDetails value)? loadDetails,
    TResult Function(_SaveLocation value)? saveLocation,
  }) {
    return saveLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadDetails value)? loadDetails,
    TResult Function(_SaveLocation value)? saveLocation,
    required TResult orElse(),
  }) {
    if (saveLocation != null) {
      return saveLocation(this);
    }
    return orElse();
  }
}

abstract class _SaveLocation implements DetailsEvent {
  const factory _SaveLocation(Location location) = _$_SaveLocation;

  Location get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SaveLocationCopyWith<_SaveLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DetailsStateTearOff {
  const _$DetailsStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(Location location) {
    return _Loaded(
      location,
    );
  }

  _LoadFailure loadFailure(Failure failure) {
    return _LoadFailure(
      failure,
    );
  }

  _LocationSaved locationSaved() {
    return const _LocationSaved();
  }
}

/// @nodoc
const $DetailsState = _$DetailsStateTearOff();

/// @nodoc
mixin _$DetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Location location) loaded,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() locationSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location location)? loaded,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? locationSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location location)? loaded,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? locationSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LocationSaved value) locationSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationSaved value)? locationSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationSaved value)? locationSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Location location) loaded,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() locationSaved,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location location)? loaded,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? locationSaved,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location location)? loaded,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? locationSaved,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LocationSaved value) locationSaved,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationSaved value)? locationSaved,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationSaved value)? locationSaved,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DetailsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({Location location});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_Loaded(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.location);

  @override
  final Location location;

  @override
  String toString() {
    return 'DetailsState.loaded(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Location location) loaded,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() locationSaved,
  }) {
    return loaded(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location location)? loaded,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? locationSaved,
  }) {
    return loaded?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location location)? loaded,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? locationSaved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LocationSaved value) locationSaved,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationSaved value)? locationSaved,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationSaved value)? locationSaved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DetailsState {
  const factory _Loaded(Location location) = _$_Loaded;

  Location get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DetailsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Location location) loaded,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() locationSaved,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location location)? loaded,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? locationSaved,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location location)? loaded,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? locationSaved,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LocationSaved value) locationSaved,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationSaved value)? locationSaved,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationSaved value)? locationSaved,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements DetailsState {
  const factory _LoadFailure(Failure failure) = _$_LoadFailure;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocationSavedCopyWith<$Res> {
  factory _$LocationSavedCopyWith(
          _LocationSaved value, $Res Function(_LocationSaved) then) =
      __$LocationSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocationSavedCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$LocationSavedCopyWith<$Res> {
  __$LocationSavedCopyWithImpl(
      _LocationSaved _value, $Res Function(_LocationSaved) _then)
      : super(_value, (v) => _then(v as _LocationSaved));

  @override
  _LocationSaved get _value => super._value as _LocationSaved;
}

/// @nodoc

class _$_LocationSaved implements _LocationSaved {
  const _$_LocationSaved();

  @override
  String toString() {
    return 'DetailsState.locationSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LocationSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Location location) loaded,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() locationSaved,
  }) {
    return locationSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location location)? loaded,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? locationSaved,
  }) {
    return locationSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Location location)? loaded,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? locationSaved,
    required TResult orElse(),
  }) {
    if (locationSaved != null) {
      return locationSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LocationSaved value) locationSaved,
  }) {
    return locationSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationSaved value)? locationSaved,
  }) {
    return locationSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LocationSaved value)? locationSaved,
    required TResult orElse(),
  }) {
    if (locationSaved != null) {
      return locationSaved(this);
    }
    return orElse();
  }
}

abstract class _LocationSaved implements DetailsState {
  const factory _LocationSaved() = _$_LocationSaved;
}
