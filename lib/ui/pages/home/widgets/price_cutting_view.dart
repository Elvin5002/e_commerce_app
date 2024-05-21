import 'package:e_commerce_app/utils/extentions/num_extentions.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/dots_indigator.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/home_page_view_builder.dart';
import 'package:flutter/material.dart';

class PriceCuttingView extends StatefulWidget {
  const PriceCuttingView({Key? key}) : super(key: key);

  @override
  State<PriceCuttingView> createState() => _PriceCuttingViewState();
}

class _PriceCuttingViewState extends State<PriceCuttingView> {
  late PageController _pageController;
  final _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      //viewportFraction: 0.85,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 150,
        child: HomePageViewBuilder(
          pageController: _pageController,
        ),
      ),
      20.h,
      DotsIndigator(
        pageController: _pageController,
      ),
    ]);
  }
}
