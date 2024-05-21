import 'package:e_commerce_app/utils/constants/app_colors.dart';
import 'package:e_commerce_app/utils/constants/app_paddings.dart';
import 'package:e_commerce_app/utils/constants/app_radiuses.dart';
import 'package:flutter/material.dart';

class SizeIconView extends StatefulWidget {
const SizeIconView({ Key? key }) : super(key: key);

  @override
  State<SizeIconView> createState() => _SizeIconViewState();
}

class _SizeIconViewState extends State<SizeIconView> {

  List<String> size = ['S', 'M', 'L', 'XL', 'XXL'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: size.length,
        itemBuilder: (context, i) => sizeIcon(i)
      ),
    );
  }

  Widget sizeIcon(int i){
    return Padding(
      padding: AppPaddings.r5,
      child: Container(
        //width: 70,
        height: 35,
        decoration: BoxDecoration(
          color: selectedIndex == i ? AppColors.orange: AppColors.lightgrey,
          borderRadius: AppRadiuses.a10
        ),
        child: TextButton(
          onPressed: (){
            selectedIndex = i;
            setState(() {});
          }, 
          child: Text(
            size[i],
            style: TextStyle(color: selectedIndex == i ? AppColors.white: AppColors.black),
          )
        ),
      )
    );
  }
}
