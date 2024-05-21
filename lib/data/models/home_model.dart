import 'package:e_commerce_app/utils/constants/app_assets.dart';
import 'package:e_commerce_app/utils/constants/app_texts.dart';

class HomeModel {
  const HomeModel(
      {required this.image,
      required this.title,
      required this.description,
      required this.ratio,
      required this.descDetails,
      required this.purchasedCount,
      required this.stockCount,
      required this.favorite,
      required this.price});

  final String image;
  final String title;
  final String description;
  final String ratio;
  final String descDetails;
  final String price;
  final String purchasedCount;
  final String stockCount;
  final bool favorite;

  static const List<HomeModel> homeModelItems = [
    HomeModel(
        image: AppAssets.img1,
        title: AppTexts.hoodie,
        description: AppTexts.description1,
        ratio: AppTexts.ratio1,
        favorite: false,
        price: AppTexts.price1,
        descDetails: AppTexts.descDetails1,
        purchasedCount: AppTexts.purchasedCount1,
        stockCount: AppTexts.stockCount1),
    HomeModel(
        image: AppAssets.img5,
        title: AppTexts.tshirt,
        description: AppTexts.description2,
        ratio: AppTexts.ratio2,
        favorite: false,
        price: AppTexts.price2,
        descDetails: AppTexts.descDetails2,
        purchasedCount: AppTexts.purchasedCount2,
        stockCount: AppTexts.stockCount2),
    HomeModel(
        image: AppAssets.img3,
        title: AppTexts.pants,
        description: AppTexts.description3,
        ratio: AppTexts.ratio3,
        favorite: false,
        price: AppTexts.price3,
        descDetails: AppTexts.descDetails3,
        purchasedCount: AppTexts.purchasedCount3,
        stockCount: AppTexts.stockCount3),
    HomeModel(
        image: AppAssets.img2,
        title: AppTexts.jacket,
        description: AppTexts.description4,
        ratio: AppTexts.ratio4,
        favorite: false,
        price: AppTexts.price4,
        descDetails: AppTexts.descDetails4,
        purchasedCount: AppTexts.purchasedCount4,
        stockCount: AppTexts.stockCount4),
  ];
}
