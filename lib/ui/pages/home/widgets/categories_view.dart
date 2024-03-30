import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  List<String> categories = ['All', 'Hoodie', 'Jacket', 'Pants', 'T-Shirt', 'Shirt', 'Outwear', 'Shoes', 'Accessories'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index)
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        selectedIndex = index;
        setState(() {});
      },
      child: Padding(
        padding: AppPaddings.lr5,
        child: Text(
          categories[index],
          style: TextStyle(
            color: selectedIndex == index ? AppColors.orange : Colors.black
          ),
          //style: AppTextStyles.bodyStyle,
        ),
      )
    );
  }
}
