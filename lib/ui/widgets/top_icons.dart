import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TopIcons extends StatelessWidget {
  const TopIcons({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: AppColors.lightgrey,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon),
        color: AppColors.black,
        onPressed: () {},
      ),
    );
  }
}
