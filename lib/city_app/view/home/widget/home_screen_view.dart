import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:map/city_app/view/home/widget/settings.dart';

import '../../../controller/controller.dart';
import '../../../utils/constants.dart';

class HomeScreenView extends GetView<Controller> {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.titles[controller.currentIndex.value]),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                Get.to(SettingPage());
              },
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 70, top: 20),
        child: FloatingActionButton(
          backgroundColor: KmainColor,
          onPressed: () {
            Get.to(SearchBar());
          },
          child: Icon(
            Icons.search,
            size: 40.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          //selectedItemColor: const Color.fromARGB(255, 5, 112, 126),
          currentIndex: controller.currentIndex.value,
          onTap: (index) {
            controller.currentIndex.value = index;
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.location_city_outlined), label: 'All Places'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorites'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.place), label: 'All Map'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          ]),
      body: GetX<Controller>(
        builder: (controller) =>
            controller.screens[controller.currentIndex.value],
      ),
    );
  }
}
