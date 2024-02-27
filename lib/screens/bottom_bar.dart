import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_looks/screens/home_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _seletedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_seletedIndex],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onItemTapped,
        selectedIndex: _seletedIndex,
        elevation: 10,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            selectedIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            tooltip: "Home",
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            selectedIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            tooltip: "Search",
            label: "Search",
          ),
          NavigationDestination(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            selectedIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            tooltip: "Ticket",
            label: "Ticket",
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(FluentSystemIcons.ic_fluent_person_regular),
            ),
            selectedIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            tooltip: "Profile",
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
