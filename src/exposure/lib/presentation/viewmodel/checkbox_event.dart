part of 'checkbox_bloc.dart';

@freezed
abstract class CheckBoxEvent with _$CheckBoxEvent {
  // ignore: avoid_positional_boolean_parameters
  const factory CheckBoxEvent.changeCheckBox(bool value) = _ConfirmCheckBox;
}
