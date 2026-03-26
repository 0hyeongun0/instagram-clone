import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/activity/activity_screen.dart';
import 'package:flutter_application_1/screens/add/add_screen.dart';
import 'package:flutter_application_1/screens/feed/feed_screen.dart';
import 'package:flutter_application_1/screens/main_controller.dart';
import 'package:flutter_application_1/screens/profile/profile_screen.dart';
import 'package:flutter_application_1/screens/search/search_screen.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());
    final screens = [
      FeedScreen(),
      SearchScreen(),
      AddScreen(),
      ActivityScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: Obx(() => screens[controller.currentIndex.value]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.onSurface,
        unselectedItemColor: Theme.of(context).colorScheme.onSurface,
        currentIndex: controller.currentIndex.value,
        onTap: (index) => controller.currentIndex.value = index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }
}
