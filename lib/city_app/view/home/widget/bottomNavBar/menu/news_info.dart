import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants.dart';

class NewsInfoPage extends StatelessWidget {
  const NewsInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text('News Info'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, int index) {
          return Card(
            elevation: 10,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Flag_of_Palestine.svg/800px-Flag_of_Palestine.svg.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  'Free Palestine',
                  style: TextStyle(

                    color: KmainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  'God Save Palestine ',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
