import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class themee extends StatelessWidget {
  const themee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Theme(
              data:ThemeData(
        iconTheme:IconThemeData(
size:200,
          color: Colors.pink

        ),
        ),

              child: Icon(
                Icons.access_time_outlined,

              ),
            )
          ],
        ),
      ),
    );
  }
}
