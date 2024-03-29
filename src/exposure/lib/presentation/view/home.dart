import 'package:auto_route/auto_route.dart';
import 'package:exposure/presentation/routes/router.gr.dart';
import 'package:exposure/presentation/view/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home() : super();

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        LocationsPageRoute(),
        InfectedPageRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          selectedItemColor: CustomColor.main,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_sharp),
              label: "Location",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services),
              label: "Infected",
            ),
          ],
        );
      },
    );
  }
}
