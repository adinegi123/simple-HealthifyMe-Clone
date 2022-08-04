import 'package:fitness_app/Pages/Bottomnavbar/BottomnavPages/me.dart';
import 'package:fitness_app/Pages/Bottomnavbar/BottomnavPages/plans.dart';
import 'package:fitness_app/Pages/Bottomnavbar/BottomnavPages/create_videos.dart';
import 'package:fitness_app/Pages/Bottomnavbar/BottomnavPages/video_shorts.dart';
import 'package:flutter/material.dart';

import '../../HomePage/homepage_second.dart';

class BottomBarHandlerPage extends StatefulWidget {
  const BottomBarHandlerPage({Key? key}) : super(key: key);

  @override
  State<BottomBarHandlerPage> createState() => _BottomBarHandlerPageState();
}

class _BottomBarHandlerPageState extends State<BottomBarHandlerPage> {
  var currentTab = 0;
  var screens = const [
    Homepage_Second(),
    Video_ShortsPage(),
    Create_Videos(),
    Plans_Page(),
    Me_Page(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentTab],
      bottomNavigationBar: Container(
        color: Colors.lightGreen.withOpacity(0.1),
        child: BottomNavigationBar(
          currentIndex: currentTab,
          unselectedLabelStyle: const TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          selectedFontSize: 14,
          selectedIconTheme: IconThemeData(size: 25),
          selectedLabelStyle: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.h_mobiledata, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined, color: Colors.black),
              label: 'Shorts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outlined, color: Colors.black),
              label: 'Create',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_circle_up, color: Colors.black),
              label: 'Plans',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded, color: Colors.black),
              label: 'Me',
            ),
          ],
        ),
      ),
    );
  }
}
