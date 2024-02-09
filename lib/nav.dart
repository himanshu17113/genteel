import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:genteel/core/utils/image_constant.dart';
import 'package:genteel/presentation/home_screen/home_screen.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int selectedIndex = 0;
  final List screens = [HomeScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[0],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        //type: BottomNavigationBarType.shifting,
        onTap: (value) => setState(() => selectedIndex = value),
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(size: 26),
        unselectedIconTheme: IconThemeData(size: 24),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImageConstant.imgSolarHome2Linear,
              width: 22,
              height: 22,
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              ImageConstant.imgSolarHome2Linear,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            // activeIcon: Icon(
            //   Icons.menu,
            //   color: Colors.black,
            // ),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImageConstant.imgMingcuteChat4Line,
              width: 22,
              height: 22,
            ),
            activeIcon: SvgPicture.asset(
              ImageConstant.imgMingcuteChat4Line,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            // activeIcon: Icon(
            //   CupertinoIcons.bag_fill,
            //   color: Colors.black,
            // ),
            label: 'bag',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.amberAccent,
            ),
            label: 'bag',
          ),
        ],
      ),
    );
  }
}
