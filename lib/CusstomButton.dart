import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  custombutton({required this.text,required this.ontap});
 final String text;
 final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 300,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(text,style: TextStyle(color: Colors.red),),
        ),
      ),
    );
  }
}