import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
bool status=true;
class settingpage extends StatelessWidget {
  const settingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      appBar: AppBar(
        backgroundColor: Colors.pink,

        leading:IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: () { Navigator.pop(context); },),
        title: Text("Setting",style: TextStyle(color:Colors.white),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Row(
              children:[
                Icon(Icons.notifications_active_outlined,color:Colors.pink),
                Center(child: Text("Notification",style: TextStyle(color:Colors.pink))),


              ]
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
                children:[
                  //    Icon(Icons.language,color:Colors.pink),
                  Center(child: Text("Language",style: TextStyle(color:Colors.black))),
                  Spacer(),
                  FlutterSwitch(
                    width: 50.0,
                    height: 25.0,
                    toggleSize: 20.0,
                    value: status,
                    borderRadius: 30.0,
                    padding: 2.0,
                    toggleColor: Colors.white,
                    // switchBorder: Border.all(
                    //   color: Colors.black,
                    //   width: 6.0,
                    // ),
                    toggleBorder: Border.all(
                      color: Colors.white,
                      width: 5.0,
                    ),
                    activeColor: Colors.pink,
                    inactiveColor: Colors.black38,
                    onToggle: (val) {

                    },
                  ),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[

                  //    Icon(Icons.language,color:Colors.pink),
                  Row(
                    children: [
                      Center(child: Text("Language",style: TextStyle(color:Colors.black))),
                    ],
                  ),
                 Text("Defualt ...",style: TextStyle(color:Colors.grey)),

                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(color: Colors.grey,),
          ),

          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
                children:[
                  //    Icon(Icons.language,color:Colors.pink),
                  Center(child: Text("Language",style: TextStyle(color:Colors.black))),
                  Spacer(),
                  Icon(Icons.check_box,color: Colors.pinkAccent,)
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("Display",style: TextStyle(color:Colors.pink)),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
                children:[
                  //    Icon(Icons.language,color:Colors.pink),
                  Center(child: Text("Language",style: TextStyle(color:Colors.black))),
                  Spacer(),
                  FlutterSwitch(
                    width: 50.0,
                    height: 25.0,
                    toggleSize: 20.0,
                    value: status,
                    borderRadius: 30.0,
                    padding: 2.0,
                    toggleColor: Colors.white,
                    // switchBorder: Border.all(
                    //   color: Colors.black,
                    //   width: 6.0,
                    // ),
                    toggleBorder: Border.all(
                      color: Colors.white,
                      width: 5.0,
                    ),
                    activeColor: Colors.pink,
                    inactiveColor: Colors.black38,
                    onToggle: (val) {

                    },
                  ),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[

                  //    Icon(Icons.language,color:Colors.pink),
                  Row(
                    children: [
                      Center(child: Text("Language",style: TextStyle(color:Colors.black))),
                    ],
                  ),
                  Text("Defualt ...",style: TextStyle(color:Colors.grey)),

                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
                children:[
                  //    Icon(Icons.language,color:Colors.pink),
                  Center(child: Text("Language",style: TextStyle(color:Colors.black))),
                  Spacer(),

                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
                children:[
                  //    Icon(Icons.language,color:Colors.pink),
                  Center(child: Text("Language",style: TextStyle(color:Colors.black))),
                  Spacer(),

                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
                children:[
                  //    Icon(Icons.language,color:Colors.pink),
                  Center(child: Text("Language",style: TextStyle(color:Colors.black))),
                  Spacer(),
                  FlutterSwitch(
                    width: 50.0,
                    height: 25.0,
                    toggleSize: 20.0,
                    value: status,
                    borderRadius: 30.0,
                    padding: 2.0,
                    toggleColor: Colors.white,
                    // switchBorder: Border.all(
                    //   color: Colors.black,
                    //   width: 6.0,
                    // ),
                    toggleBorder: Border.all(
                      color: Colors.white,
                      width: 5.0,
                    ),
                    activeColor: Colors.pink,
                    inactiveColor: Colors.black38,
                    onToggle: (val) {

                    },
                  ),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[

                  //    Icon(Icons.language,color:Colors.pink),
                  Row(
                    children: [
                      Center(child: Text("Language",style: TextStyle(color:Colors.black))),
                    ],
                  ),
                  Text("Defualt ...",style: TextStyle(color:Colors.grey)),

                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}
