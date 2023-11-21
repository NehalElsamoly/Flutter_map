import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../home/home_screen.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    _initApp();
  }

  void _initApp() async {
    // Request location permission
    final permissionStatus = await Permission.location.request();
    if (permissionStatus.isGranted) {
      // Permission granted, check network connectivity
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.wifi ||
          connectivityResult == ConnectivityResult.mobile) {
        // Navigate to the home page
        Get.off(() => HomeScreen());
      } else {
        Get.defaultDialog(
          title: 'No Internet Connection',
          middleText: 'Please Check your internet connection',
          titleStyle:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          textConfirm: 'Ok',
          onConfirm: () {
            Get.back();
            _initApp();
          },
        );
      }
    } else {
      // Handle the case where the user denies location permission
      Get.defaultDialog(
        title: 'Location Permission Required',
        middleText: 'Please grant location permission to use this app.',
        titleStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        textConfirm: 'Ok',
        onConfirm: () {
          Get.back();
          // You can also consider exiting the app or showing a message
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 112, 126),
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
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/p.jpg'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " You don't have to be a Muslim to support Palestine; ",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Text(
              "you just have to be human. ",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
