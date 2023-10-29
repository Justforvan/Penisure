import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:penisure/pages/facts.dart';
import 'package:penisure/pages/home.dart';
import 'package:penisure/pages/location.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  NavigationDestinationLabelBehavior destinationLabelBehavior =
      NavigationDestinationLabelBehavior.onlyShowSelected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: <Widget>[
              const HomeScreen(),
              const FaQPage(),
              const LocationPage()
            ][_selectedIndex],
            bottomNavigationBar: NavigationBar(
              labelBehavior: destinationLabelBehavior,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: <Widget>[
                NavigationDestination(
                  icon: Icon(MdiIcons.homeOutline),
                  selectedIcon: Icon(MdiIcons.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(MdiIcons.informationBoxOutline),
                  selectedIcon: Icon(MdiIcons.informationBox),
                  label: 'Facts',
                ),
                NavigationDestination(
                    icon: Icon(MdiIcons.mapMarkerOutline),
                    selectedIcon: Icon(MdiIcons.mapMarker),
                    label: 'Find'),
              ],
            )));
  }
}
