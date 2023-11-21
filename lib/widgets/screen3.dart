import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen3 extends StatelessWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.12),
        child: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          actions: [Icon(Icons.share, color: Colors.white)],
          // title: Center(child: Text("classicma logo",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white))),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "[Tips]Preapering your trip to Bandung",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
          Row(
          children: [
          CachedNetworkImage( // Use CachedNetworkImage widget
          imageUrl: 'https://th.bing.com/th/id/OIP.ZRezH8rKYvTg2NldhoGMZQHaE6?pid=ImgDet&rs=1', // Replace with your image URL
            placeholder: (context, url) => CircularProgressIndicator(), // Placeholder widget while image is loading
            errorWidget: (context, url, error) => Icon(Icons.error), // Widget to display in case of an error
          ),
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
                      "january 21,2018 09:00",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Hello everyone who support this, I'm here to simply speak the truth and ask you some questions. Tell me, how would you feel if someone came and took your home, killed your family and children just because you tried to resist that? Tell me, what is your feeling as a person who claims to support human rights when you witness such scenes of child killings without any guilt and with out mercy, the use of internationally banned weapons, and the destruction of homes, cutting",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "1:calling you about palatine  ",
                      style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "You don't have to be a Muslim to support Palestine; you just have to be human",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
