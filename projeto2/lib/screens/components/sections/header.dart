import 'package:flutter/material.dart';
import 'package:projeto2/screens/components/themes/theme_color.dart';

class Header extends StatelessWidget{
  const Header({Key? key}) : super(key: key);
@override
Widget build(BuildContext context){
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: ThemeColors.headerGradient
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
    ),
    child:Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Text('R\$1000.00', style: TextStyle(fontSize:28, fontWeight: FontWeight.bold, color: Colors.white)),
            
            Text.rich(
              TextSpan( 
                text:'R\$', 
                style: Theme.of(context).textTheme.bodyMedium,
            children: <TextSpan>[
              TextSpan(
                text: '1000.00',
                style: Theme.of(context).textTheme.bodyLarge
              )
            ]
              )
            ),
            
            
            
            
            Text('Balanço Disponível', style: TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
        const Icon(Icons.account_circle, size: 42, color: Colors.white),
      ],
      ),
  ));
}
}