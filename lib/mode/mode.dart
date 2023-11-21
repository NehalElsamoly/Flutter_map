import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'controller/modecubit_cubit.dart';

class mode extends StatefulWidget {
  const mode({Key? key}) : super(key: key);

  @override
  State<mode> createState() => _modeState();
}

class _modeState extends State<mode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hi with neww mode"),
        actions: [
          IconButton(onPressed: (){
            ModecubitCubit.get(context).changeAppMode();
          }, icon:Icon(Icons.brightness_4_outlined) )
        ],
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {

        }, child: Text("Change mood"),

        ),
      ),
    );
  }
}
