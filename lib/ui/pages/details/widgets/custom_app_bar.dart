import 'package:e_commerce_app/ui/widgets/top_icons.dart';
import 'package:e_commerce_app/utils/constants/app_texts.dart';
import 'package:e_commerce_app/utils/extentions/num_extentions.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
const CustomAppBar({ Key? key }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context){
    return AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context), 
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: const Text(AppTexts.detail),
        centerTitle: true,
        actions: [
          const TopIcons(icon: Icons.share_outlined,),
          5.w,
          const TopIcons(icon: Icons.message_outlined),
          5.w,
        ],
      );
  }
  
  
}