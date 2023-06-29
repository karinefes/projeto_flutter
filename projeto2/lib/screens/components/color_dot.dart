import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget{
  final Color? color;
  const ColorDot({Key?key, required this.color}): super(key: key);

  @override
  Widget build(BuildContext){
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      );
  }  
}