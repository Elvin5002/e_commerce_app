
import 'package:e_commerce_app/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavItemsModel {
  NavItemsModel({required this.icon, required this.text});

  final IconData icon;
  final String text;

  static List<NavItemsModel> items = [
    NavItemsModel(
      icon: FontAwesomeIcons.house,
      text: AppTexts.home,
    ),
    NavItemsModel(
      icon: FontAwesomeIcons.compass,
      text: AppTexts.discover,
    ),
    NavItemsModel(
      icon: FontAwesomeIcons.heart,
      text: AppTexts.wishlist,
    ),
    NavItemsModel(
      icon: Icons.message,
      text: AppTexts.message,
    ),
    NavItemsModel(
      icon: FontAwesomeIcons.user,
      text: AppTexts.profile,
    ),
  ];
}