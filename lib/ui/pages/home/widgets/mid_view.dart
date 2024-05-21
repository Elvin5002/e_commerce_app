import 'package:e_commerce_app/cubits/product/product_cubit.dart';
import 'package:e_commerce_app/ui/pages/details/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'mid_items.dart';

class MidView extends StatelessWidget {
  const MidView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //List<HomeModel> items = HomeModel.homeModelItems;
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductInitial || state is ProductLoading) {
          return Center(child: SizedBox(width: 64, height: 64, child: const CircularProgressIndicator()));
        } else if (state is ProductNetworkError) {
          return Text(
            state.errorMessage,
            style: const TextStyle(fontSize: 32),
          );
        //}  else if (state is ProductFailure) {
        //   return Text(
        //     state.errorMessage,
        //     style: const TextStyle(fontSize: 32),
        //   );
        } else if (state is ProductSuccess) {
          final product = state.response;
          return Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.68,
                ),
                itemCount: product.length,
                itemBuilder: (_, int i) {
                  return MidItems(
                    items: product[i],
                    onPress: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(
                                  item: product[i],
                                ))),
                  );
                }));
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
