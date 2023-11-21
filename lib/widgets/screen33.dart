import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen33 extends StatelessWidget {
  const Screen33({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
        Size.fromHeight(MediaQuery.of(context).size.height * 0.12),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          actions: [Icon(Icons.share, color: Colors.white)],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "[Tips] Preparing your trip to Bandung",
                    style: TextStyle(
                        color:  Color.fromARGB(255, 2, 29, 102),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).width * 0.57,
                  child: CachedNetworkImage(
                    // Use CachedNetworkImage widget
                    imageUrl:
                    'https://th.bing.com/th/id/OIP.ZRezH8rKYvTg2NldhoGMZQHaE6?pid=ImgDet&rs=1', // Replace with your image URL
                    placeholder: (context, url) =>
                        CircularProgressIndicator(), // Placeholder widget while image is loading
                    errorWidget: (context, url, error) => Icon(
                        Icons.error), // Widget to display in case of an error)
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_month_sharp,
                    color: Colors.grey,
                    size: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "January 21, 2018 09:00",
                    style: TextStyle(color:  Color.fromARGB(255, 2, 29, 102), fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Hello everyone who supports this, I'm here to simply speak the truth and ask you some questions. Tell me, how would you feel if someone came and took your home, killed your family and children just because you tried to resist that? Tell me, what is your feeling as a person who claims to support human rights when you witness such scenes of child killings without any guilt and without mercy, the use of internationally banned weapons, and the destruction of homes, cutting...",
                style: TextStyle(color: Color.fromARGB(255, 2, 29, 102), fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "1: Calling you about Palestine",
                style: TextStyle(
                  color:Color.fromARGB(255, 2, 29, 102),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "You don't have to be a Muslim to support Palestine; you just have to be human",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
