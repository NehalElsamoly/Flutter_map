import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/controller.dart';
import '../../../utils/constants.dart';

bool status = true;

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);
  Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: KmainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Setting",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(children: [
            Icon(Icons.notifications_active_outlined, color: KmainColor),
            Center(
                child:
                    Text("Notification", style: TextStyle(color: KmainColor))),
          ]),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(children: [
              //    Icon(Icons.language,color:Colors.pink),
              Center(
                  child:
                      Text("Language", style: TextStyle(color: Colors.black))),
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
                activeColor: KmainColor,
                inactiveColor: Colors.black38,
                onToggle: (val) {},
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //    Icon(Icons.language,color:Colors.pink),
                  Row(
                    children: [
                      Center(
                          child: Text("Language",
                              style: TextStyle(color: Colors.black))),
                    ],
                  ),
                  Text("Defualt ...", style: TextStyle(color: Colors.grey)),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(children: [
              //    Icon(Icons.language,color:Colors.pink),
              Center(
                  child:
                      Text("Language", style: TextStyle(color: Colors.black))),
              Spacer(),
              Icon(
                Icons.check_box,
                color: KmainColor,
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("Display", style: TextStyle(color: KmainColor)),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(children: [
              //    Icon(Icons.language,color:Colors.pink),
              Center(
                  child:
                      Text("Language", style: TextStyle(color: Colors.black))),
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
                activeColor: KmainColor,
                inactiveColor: Colors.black38,
                onToggle: (val) {},
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //    Icon(Icons.language,color:Colors.pink),
                  Row(
                    children: [
                      Center(
                          child: Text("Language",
                              style: TextStyle(color: Colors.black))),
                    ],
                  ),
                  Text("Defualt ...", style: TextStyle(color: Colors.grey)),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(children: [
              //    Icon(Icons.language,color:Colors.pink),
              Center(
                  child:
                      Text("Language", style: TextStyle(color: Colors.black))),
              Spacer(),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(children: [
              //    Icon(Icons.language,color:Colors.pink),
              Center(
                  child:
                      Text("Language", style: TextStyle(color: Colors.black))),
              Spacer(),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(children: [
              //    Icon(Icons.language,color:Colors.pink),
              Center(
                  child:
                      Text("Language", style: TextStyle(color: Colors.black))),
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
                activeColor: KmainColor,
                inactiveColor: Colors.black38,
                onToggle: (val) {},
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //    Icon(Icons.language,color:Colors.pink),
                  Row(
                    children: [
                      Center(
                          child: Text("Language",
                              style: TextStyle(color: Colors.black))),
                    ],
                  ),
                  Text("Defualt ...", style: TextStyle(color: Colors.grey)),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(children: [
              //    Icon(Icons.language,color:Colors.pink),
              Center(
                  child:
                      Text("App Theme", style: TextStyle(color: Colors.black))),
              Spacer(),
              FlutterSwitch(
                width: 50.0,
                height: 30.0,
                toggleSize: 20.0,
                value: controller.status.value,
                borderRadius: 30.0,
                padding: 2.0,
                activeToggleColor: KmainColor,
                inactiveToggleColor: const Color(0xFF2F363D),
                activeSwitchBorder: Border.all(
                  color: const Color(0xFF3C1E70),
                  width: 1.0,
                ),
                inactiveSwitchBorder: Border.all(
                  color: const Color(0xFFD1D5DA),
                  width: 1.0,
                ),
                activeColor: KmainColor,
                inactiveColor: Colors.white,
                activeIcon: const Icon(
                  Icons.nightlight_round,
                  color: Color(0xFFF8E3A1),
                ),
                inactiveIcon: const Icon(
                  Icons.wb_sunny,
                  color: Color(0xFFFFDF5D),
                ),
                onToggle: (val) {
                  controller.status.value = val;

                  if (Get.isDarkMode) {
                    Get.changeThemeMode(ThemeMode.light);
                  } else {
                    Get.changeThemeMode(ThemeMode.dark);
                  }

                  (context as Element).markNeedsBuild();
                },
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
