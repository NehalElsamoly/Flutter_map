// ignore: must_be_immutable
import 'dart:ui';

import 'package:flutter/material.dart';

import 'constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  IconData? icon;

  CustomButton({super.key, required this.text, this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: const Color.fromARGB(255, 210, 209, 209),
                ),
                SizedBox(width: 8), // Add some space between icon and text
                Text(
                  ' $text',
                  style: TextStyle(
                      fontSize: 18,
                      color: KmainColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: KmainColor,
            ),
          ],
        ),
      ),
    );
  }
}
