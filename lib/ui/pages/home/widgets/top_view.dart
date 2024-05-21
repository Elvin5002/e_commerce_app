import 'package:e_commerce_app/utils/constants/app_texts.dart';
import 'package:e_commerce_app/utils/extentions/num_extentions.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/custom_input.dart';
import 'package:e_commerce_app/ui/widgets/top_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopView extends StatelessWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            flex: 5,
            child: CustomInput(
              hint: AppTexts.search,
              suffix: Icons.search,
            )),
        10.w,
        Expanded(
            flex: 2,
            child: Row(children: [
              const TopIcons(
                icon: Icons.notifications_none_outlined,
              ),
              5.w,
              const TopIcons(
                icon: FontAwesomeIcons.trashCan,
              ),
            ])),
      ],
    );
  }
}
