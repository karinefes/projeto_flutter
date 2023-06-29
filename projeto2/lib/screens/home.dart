
import 'package:projeto2/screens/components/box_card.dart';
import 'package:projeto2/screens/components/color_dot.dart';
import 'package:projeto2/screens/components/sections/account_actions.dart';
import 'package:projeto2/screens/components/sections/account_points.dart';
import 'package:projeto2/screens/components/sections/content_division.dart';
import 'package:projeto2/screens/components/sections/header.dart';
import 'package:flutter/material.dart';
import 'package:projeto2/screens/components/sections/recent_activi.dart';
import 'package:projeto2/screens/components/themes/theme_color.dart';

class home extends StatelessWidget{
  const home({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Column(
        children:<Widget> [
        const Header(),
        RecentAcitity(),
        AccountActions(),
        AccountPoints(),
  ]),
    );
  }
}

