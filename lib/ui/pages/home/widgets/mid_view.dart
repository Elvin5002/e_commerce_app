import 'package:e_commerce_app/models/home_model.dart';
import 'package:e_commerce_app/ui/pages/details/details_page.dart';
import 'package:flutter/material.dart';
import 'mid_items.dart';

class MidView extends StatelessWidget {
  const MidView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<HomeModel> items = HomeModel.homeModelItems;
    return Expanded(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              childAspectRatio: 0.68,
            ),
            itemCount: items.length,
            itemBuilder: (_, int i) {
              return MidItems(
                items: items[i],
                onPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage(
                              item: items[i],
                            ))),
              );
            }));
  }
}
