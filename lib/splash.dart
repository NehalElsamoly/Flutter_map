import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: Column(
         //   crossAxisAlignment:CrossAxisAlignment.center ,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                "WELCOME",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              )),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/p.jpeg'),
                  ),
                ),
              ),
Padding(
  padding: EdgeInsets.all(8.0),
  child:   Text(" You don't have to be a Muslim to support Palestine; "
       ,style: TextStyle(color:Colors.white),),
),
              Text("you just have to be human. "
                ,style: TextStyle(color:Colors.white),),
            ],
          ),
        ));
  }
}
