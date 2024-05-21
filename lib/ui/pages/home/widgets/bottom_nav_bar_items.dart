
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarItems {
  const BottomNavBarItems({
    required this.icon,
    required this.activeIcon,
  });

  final IconData icon;
  final IconData activeIcon;

  static const bottomNavBarItems = [
    BottomNavBarItems(
      icon: FontAwesomeIcons.house,
      activeIcon: FontAwesomeIcons.house,
    ),
    BottomNavBarItems(
      icon: FontAwesomeIcons.compass,
      activeIcon: FontAwesomeIcons.compass,
    ),
    BottomNavBarItems(
      icon: FontAwesomeIcons.heart,
      activeIcon: FontAwesomeIcons.heart,
    ),
    BottomNavBarItems(
      icon: FontAwesomeIcons.user,
      activeIcon: FontAwesomeIcons.user,
    ),
  ];
}
