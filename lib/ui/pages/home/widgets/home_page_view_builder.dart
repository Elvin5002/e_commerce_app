import 'package:e_commerce_app/models/top_model.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/top_items.dart';
import 'package:flutter/material.dart';

class HomePageViewBuilder extends StatelessWidget {
  const HomePageViewBuilder({ Key? key, required this.pageController }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    List<TopModel> topModel = TopModel.topModel;
    return Row(
      children: [
        Expanded(
          child: PageView.builder(
            controller: pageController,
            itemCount: topModel.length,
            itemBuilder:(_, i) {
              final data = topModel[i];
              return TopItems(
                color: data.color, 
                text: data.title, 
                image: data.image,
              );
            },
          ),
        ),
      ],
    );
  }
}