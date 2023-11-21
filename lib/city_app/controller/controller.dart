
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/map3.dart';
import '../view/home/widget/bottomNavBar/all_places.dart';
import '../view/home/widget/bottomNavBar/favourates.dart';
import '../view/home/widget/bottomNavBar/menu.dart';

class Controller extends GetxController {
  RxInt currentIndex = 0.obs;
  RxBool status = false.obs;

  List<Widget> screens = [
    AllPlacesScreen(),
    FavouriteScreen(),
    SearchBar(),
    MapScreen(),
    MenuScreen(),
  ];
  List<String> titles = ['All Places', 'Favorites', 'Search', 'Map', 'Menu'];
}
