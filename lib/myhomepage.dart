import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:notch_bottom_nav_bar/pages/chat.dart';
import 'package:notch_bottom_nav_bar/pages/dashboard.dart';
import 'package:notch_bottom_nav_bar/pages/favorite.dart';
import 'package:notch_bottom_nav_bar/pages/profile.dart';
import 'package:notch_bottom_nav_bar/pages/setting.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pageController = PageController(initialPage: 2);
  final controller = NotchBottomBarController(index: 2);
  //int maxCount = 5;
  int currentTab = 2;
  final List<Widget> pages = [const Chat(), const Profile(), const Dashboard(), const Favorite(), const Setting()];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: List.generate(pages.length, (index) => pages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        color: Theme.of(context).primaryColor,
        notchBottomBarController: controller,
        kBottomRadius: 28,
        kIconSize: 24,
        bottomBarWidth: 500,
        //removeMargins: false,
        durationInMilliSeconds: 400,
        itemLabelStyle: const TextStyle(color: Colors.white,),
        bottomBarItems: [
          BottomBarItem(
            inActiveItem: const Icon(
              Icons.chat_outlined,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.chat_outlined,
              color: Theme.of(context).primaryColor,
            ),
            //itemLabel: 'Chat',
          ),
          BottomBarItem(
            inActiveItem: const Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.person_outline,
              color: Theme.of(context).primaryColor,
            ),
            //itemLabel: 'Profile',
          ),
          BottomBarItem(
            inActiveItem: const Icon(
              Icons.dashboard_outlined,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.dashboard_outlined,
              color: Theme.of(context).primaryColor,
            ),
            //itemLabel: 'Dashboard',
          ),
          BottomBarItem(
            inActiveItem: const Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.favorite_outline,
              color: Theme.of(context).primaryColor,
            ),
            //itemLabel: 'Favorite',
          ),
          BottomBarItem(
            inActiveItem: const Icon(
              Icons.settings_outlined,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.settings_outlined,
              color: Theme.of(context).primaryColor,
            ),
            //itemLabel: 'Setting',
          ),
        ],
        onTap: (index){
          setState(() {
            currentTab = index;
            pageController.jumpToPage(index);
          });
        },
      ),
    );
  }
}
