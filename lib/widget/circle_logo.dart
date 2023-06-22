import 'package:flutter/material.dart';

Widget CircleLogo({var height, var width}) {
  return Center(
    child: CircleAvatar(
      radius: 55,
      backgroundColor: Color(0xff7E7E7E),
      child: Text(
        'لوگو',
        style: TextStyle(
            fontFamily: 'ISW',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25),
      ),
    ),
  );
}
