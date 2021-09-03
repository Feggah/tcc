import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/view/widgets/main_text.dart';
import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:exposure/presentation/viewmodel/details_check_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CheckInDay extends StatelessWidget {
  final String date;

  const CheckInDay({required this.date}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const MainText(title: "Dia da visita", size: 22),
            Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(primary: CustomColor.main),
              ),
              child: Builder(
                builder: (context) => TextButton(
                  onPressed: () async {
                    final String? pickedDate = await handlePickDate(context);
                    if (pickedDate != null) {
                      BlocProvider.of<DetailsCheckInBloc>(context).add(
                        DetailsCheckInEvent.datePicked(pickedDate),
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
            const Icon(Icons.calendar_today_outlined),
            SizedBox(width: MediaQuery.of(context).size.width / 16),
            SecondaryText(
              title: date,
              size: 17,
              center: false,
            )
          ],
        ),
      ],
    );
  }

  Future<String?> handlePickDate(BuildContext context) async {
    final DateTime? result = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 30)),
      lastDate: DateTime.now(),
      helpText: "SELECIONE UMA DATA",
    );
    if (result != null) {
      return DateFormat('dd/MM/yyyy').format(result);
    }
  }
}
