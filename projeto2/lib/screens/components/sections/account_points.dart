import 'package:flutter/material.dart';
import 'package:projeto2/screens/components/box_card.dart';
import 'package:projeto2/screens/components/color_dot.dart';
import 'package:projeto2/screens/components/themes/theme_color.dart';
import 'package:projeto2/screens/components/sections/content_division.dart';


class AccountPoints extends StatelessWidget{
  const AccountPoints ({Key? key}) : super(key:key);
@override 
Widget build(BuildContext context){
return Padding(
  padding:const EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
         child:Text('Pontos da conta',
         style: Theme.of(context).textTheme.titleMedium,
         ),
         ),
        const BoxCard(boxContent: _AccountPointsContent())
    ],
  )
  );
}
}

class _AccountPointsContent extends StatelessWidget{
  const _AccountPointsContent ({Key? key}) : super (key: key);
  @override 
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8.0 ),
          child: Text('Pontos totais'),
        ),
        Text('3000', style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Padding(padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ContentDivision(),
        ),
        Text('Obejetivos', style: Theme.of(context).textTheme.titleMedium,),
        Padding(padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child:Row(
          children: [
          Padding( padding: const EdgeInsets.only(right: 4.0),
          child: ColorDot(color: ThemeColors.recentAcitity['dotLar']),
          ),
          const Text('Entrega grátis: 15000pts'),
      ],
        ),
        ),
        Row(
          children:[
            Padding(padding: const EdgeInsets.only(right: 4.0),
            child: ColorDot(color: ThemeColors.recentAcitity['dotAzu']),
            ),
           Text('1 mês de streaming: 3000pts'),
      ],
    ),
  ],
  );
  }
}