import 'package:flutter/material.dart';

const Color colorWhite = Colors.white;
const Color colorPrimary = Color(0xFF5145C1);
const Color colorGrey = Colors.grey;

showScaffold(BuildContext context, String text){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(text),
      ),
  );
}