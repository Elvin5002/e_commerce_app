import 'package:e_commerce_app/ui/pages/home/widgets/product_fav_icon.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key, required this.image,}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack( 
      children: [
        Container(
          height: 150,
          width: 170,
          //padding: AppPaddings.a20,
          decoration: BoxDecoration(
            //color: AppColors.lightgrey, borderRadius: AppRadiuses.lrT10,
            image: DecorationImage(image: NetworkImage(image))
          ),
          //child: Image.asset(image),
        ),
        const Positioned(
          top: 10,
          right: 10,
          child: ProductFavIcon(),
        ),
      ]
    );
  }
}
