import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'checkbox_event.dart';
part 'checkbox_state.dart';
part 'checkbox_bloc.freezed.dart';

@injectable
class CheckBoxBloc extends Bloc<CheckBoxEvent, CheckBoxState> {
  CheckBoxBloc() : super(CheckBoxState.initial());

  @override
  Stream<CheckBoxState> mapEventToState(
    CheckBoxEvent event,
  ) async* {
    yield* event.map(
      changeCheckBox: (e) async* {
        yield state.copyWith(enableButton: e.value);
      },
    );
  }
}
