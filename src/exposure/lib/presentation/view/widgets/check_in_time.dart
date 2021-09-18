import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/view/widgets/main_text.dart';
import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:exposure/presentation/viewmodel/details_check_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
import 'package:time_range_picker/time_range_picker.dart';

class CheckInTime extends StatelessWidget {
  final String time;

  const CheckInTime({required this.time}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const MainText(title: "Horário", size: 22),
            Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(primary: CustomColor.main),
              ),
              child: Builder(
                builder: (context) => TextButton(
                  onPressed: () async {
                    final String? time = await handlePickTime(context);
                    if (time != null) {
                      BlocProvider.of<DetailsCheckInBloc>(context).add(
                        DetailsCheckInEvent.timePicked(time),
                      );
                    }
                  },
                  child: const Text(
                    "TROCAR",
                    style: TextStyle(
                      color: CustomColor.main,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 40),
        Row(
          children: [
            const Icon(Icons.watch_later_outlined),
            SizedBox(width: MediaQuery.of(context).size.width / 16),
            Expanded(
              child: SecondaryText(
                title: time,
                size: 17,
                center: false,
              ),
            )
          ],
        ),
      ],
    );
  }

  Future<String?> handlePickTime(BuildContext context) async {
    final TimeRange? result = await showTimeRangePicker(
      context: context,
      fromText: "Chegada",
      toText: "Saída",
      interval: const Duration(minutes: 10),
      strokeColor: CustomColor.main,
      handlerColor: CustomColor.secondaryText,
      selectedColor: CustomColor.button,
      backgroundColor: CustomColor.background,
      timeTextStyle: const TextStyle(
        fontFamily: "Roboto",
        color: CustomColor.main,
        fontSize: 25,
        fontWeight: FontWeight.w900,
      ),
      activeTimeTextStyle: const TextStyle(
        fontFamily: "Roboto",
        color: CustomColor.main,
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
      labels: [
        "00 h",
        "6 h",
        "12 h",
        "18 h",
      ].asMap().entries.map((e) {
        return ClockLabel.fromIndex(idx: e.key, length: 4, text: e.value);
      }).toList(),
      labelOffset: 30,
      rotateLabels: false,
      labelStyle: const TextStyle(
        fontSize: 17,
        color: CustomColor.mainText,
        fontWeight: FontWeight.bold,
      ),
      padding: 60,
    ) as TimeRange?;
    if (result != null) {
      final String start =
          "${formatTime(result.startTime.hour)}:${formatTime(result.startTime.minute)}";
      final String end =
          "${formatTime(result.endTime.hour)}:${formatTime(result.endTime.minute)}";
      return "$start até $end";
    }
  }

  String formatTime(int number) {
    String formated = number.toString();
    if (number < 10) {
      formated = "0$formated";
    }
    return formated;
  }
}
