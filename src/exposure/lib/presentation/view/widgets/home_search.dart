import 'package:auto_route/auto_route.dart';
import 'package:exposure/presentation/routes/router.gr.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:exposure/presentation/view/widgets/secondary_text.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  // ignore: avoid_field_initializers_in_const_classes
  final textHint = "Quais lugares você visitou hoje?";

  const HomeSearch() : super();

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        AutoRouter.of(context).push(const SearchPageRoute());
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 18.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(27.0),
          border: Border.all(
            color: CustomColor.cardBorder,
          ),
        ),
        padding: const EdgeInsets.only(left: 22),
        child: Row(
          children: [
            const Icon(Icons.search),
            SizedBox(
              width: MediaQuery.of(context).size.width / 25,
            ),
            SecondaryText(
              title: textHint,
              size: 17,
              center: false,
            )
          ],
        ),
      ),
    );
  }
}
