import 'package:flutter/material.dart';
import '../screen/app_util.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    required this.obsecureText,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left : 16.0,right : 20.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        obscureText: obsecureText,
        controller: controller,
        style : const TextStyle(
          color: colorWhite,
          fontFamily: 'Schyler',
        ),
        textAlign: TextAlign.center,
        cursorColor: colorWhite,
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(
            icon,
            color : colorWhite,
            size: 25.0,
          ),
          // focusColor: Colors.yellow[900],
          hintText: hintText,
          hintStyle: TextStyle(
            color : colorGrey,
            fontSize: 12.0,
            fontFamily: 'Schyler',
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color : colorWhite),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color : Colors.red),
          ),
          contentPadding: EdgeInsets.only(top:15.0),
        ),
      ),
    );
  }
}