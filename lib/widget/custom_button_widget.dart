import 'package:flutter/material.dart';

class CustomButtonBMI extends StatelessWidget {
  const CustomButtonBMI({
    super.key,
    required this.title, 
    required this.onPressed,
  });
 final String title;
 final void Function() onPressed;


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color(0xff3D18E8),
      padding: EdgeInsets.symmetric(vertical: 30), 
      child: Text(
        title,
        style: TextStyle(
          fontSize: 32,
          fontWeight: .w600,
          color: Colors.white
        ),
        ), 
    );
  }
}

