import 'package:e_commerce_app/cubits/product/product_cubit.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/bottom_nav_bar_items.dart';
import 'package:e_commerce_app/utils/constants/app_colors.dart';
import 'package:e_commerce_app/utils/extentions/num_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductCubit>();
    const navItems = BottomNavBarItems.bottomNavBarItems;
    return SizedBox(
      height: kBottomNavigationBarHeight+12,
      child: StreamBuilder(
          initialData: 0,
          stream: cubit.viewSubject.stream,
          builder: (context, snapshot) {
            final selectedIndex = snapshot.data;
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: 24,
              onTap: (index) => cubit.viewSubject.add(index),
              selectedFontSize: 0,
              currentIndex: selectedIndex!,
              items: [
                for (final item in navItems)
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(item.icon, size: 20,),
                    activeIcon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 2,
                            width: 12,
                            child: ColoredBox(color: AppColors.green),
                          ),
                          4.h,
                          Icon(item.activeIcon, size: 20,),
                        ],
                      ),
                    ),
                  ),
              ],
            );
          }),
        );
  }
}
