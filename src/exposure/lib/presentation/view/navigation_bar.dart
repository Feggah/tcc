import 'package:exposure/presentation/view/pages/infected_page.dart';
import 'package:exposure/presentation/view/pages/locations_page.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentPage = 0;
  final List<Widget> _pages = [LocationsPage(), InfectedPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_currentPage),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: CustomColor.cardBorder,
            ),
          ),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: CustomColor.navigationBackground,
          selectedItemColor: CustomColor.main,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view_sharp, // Icon
              ),
              label: "Location",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.medical_services,
                ),
                label: "Infected"),
          ],
          currentIndex: _currentPage,
          onTap: (int index) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
      ),
    );
  }
}
