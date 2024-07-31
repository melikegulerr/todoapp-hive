import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonName;
  VoidCallback onpressed;
  MyButton({super.key, required this.buttonName, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blueGrey,
      onPressed: onpressed,
      child: Text(buttonName),
    );
  }
}
