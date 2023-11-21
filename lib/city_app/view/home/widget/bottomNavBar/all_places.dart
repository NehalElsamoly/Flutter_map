import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

class AllPlacesScreen extends StatelessWidget {
  const AllPlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 40,
        itemBuilder: (context, int index) {
          return Card(
            elevation: 5,
            shadowColor: const Color.fromARGB(255, 191, 187, 187),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Image.network(
                    'https://images.pexels.com/photos/208745/pexels-photo-208745.jpeg?cs=srgb&dl=pexels-pixabay-208745.jpg&fm=jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  "WoderFul Place",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: KmainColor),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  'aljdnkfnf,sjdfnksnkdfd0hgygyfygjhhggyfdcg hggfhyfjgkuuhsjdlsfodk;soldk;alkda;ojfilshvj dhkshfoejfijeo',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Adjust the cross-axis count as needed
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      ),
    );
  }
}
