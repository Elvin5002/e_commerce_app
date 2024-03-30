import 'package:e_commerce_app/constants/app_texts.dart';
import 'package:e_commerce_app/extentions/num_extentions.dart';
import 'package:e_commerce_app/models/home_model.dart';
import 'package:flutter/material.dart';

class BottomView extends StatelessWidget {
const BottomView({ Key? key, required this.item }) : super(key: key);

  final HomeModel item;

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppTexts.descTxt, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        5.h,
        Text(item.descDetails)
      ],
    );
  }
}