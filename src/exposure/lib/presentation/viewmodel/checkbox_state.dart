part of 'checkbox_bloc.dart';

@freezed
abstract class CheckBoxState with _$CheckBoxState {
  const factory CheckBoxState({
    required bool enableButton,
  }) = _CheckBoxState;

  factory CheckBoxState.initial() => const CheckBoxState(enableButton: false);
}
