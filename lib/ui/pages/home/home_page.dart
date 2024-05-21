import 'package:e_commerce_app/ui/pages/home/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cubits/product/product_cubit.dart';
import 'widgets/home_view.dart';
import 'widgets/pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductCubit>();
    return SafeArea(
      child: Scaffold(
        body:StreamBuilder<int>(
          initialData: 0,
          stream: cubit.viewSubject.stream,
          builder: (context, snapshot) => views[snapshot.data!]),
          bottomNavigationBar: const BottomNavBar(),
        // floatingActionButton: const BottomNavBar(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

List<Widget> views = [
  const HomeView(),
  const Page1(),
  const Page2(),
  const Page3(),
  const Page4()
];
