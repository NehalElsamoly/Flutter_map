import 'package:flutter/material.dart';

class Radiobutton33 extends StatefulWidget {
  const Radiobutton33({Key? key}) : super(key: key);

  @override
  _RadiobuttonState createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton33> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text('Option 1'),
                SizedBox(width:320,),
                Radio(
                  value: 1,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as int;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    // Handle settings icon tap
                  },
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
