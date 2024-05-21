import 'package:e_commerce_app/utils/constants/app_colors.dart';
import 'package:e_commerce_app/ui/pages/home/home_page.dart';
import 'package:e_commerce_app/ui/pages/home/widgets/pages.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({ Key? key }) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {

  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: pages[pageIndex]
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: AppColors.grey), 
      child: BottomNavigationBar(    
        selectedItemColor: AppColors.orange,
        currentIndex: pageIndex,
        onTap: (int index) {
          pageIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      )
    );
  }
}