import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/componnents.dart';
import 'menu/news_info.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.info_outline_rounded,
              text: 'News Info',
              onPressed: () {
                Get.to(NewsInfoPage());
              },
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.face_retouching_natural_rounded,
              text: 'Featured Places',
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.settings,
              text: 'Tourist Destination',
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.food_bank,
              text: 'Food&Drink',
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.hotel,
              text: 'Hotels',
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.tour,
              text: 'Entertainment',
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.pedal_bike,
              text: 'Sport',
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.shopping_bag,
              text: 'Shopping',
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.emoji_transportation,
              text: 'Transportation',
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.recycling_outlined,
              text: 'Religion',
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.room_service,
              text: 'Public Services',
              onPressed: () {},
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              icon: Icons.money,
              text: 'Money',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
