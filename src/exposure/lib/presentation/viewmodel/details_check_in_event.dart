part of 'details_check_in_bloc.dart';

@freezed
abstract class DetailsCheckInEvent with _$DetailsCheckInEvent {
  const factory DetailsCheckInEvent.datePicked(String date) = _DatePicked;
  const factory DetailsCheckInEvent.timePicked(String time) = _TimePicked;
}
