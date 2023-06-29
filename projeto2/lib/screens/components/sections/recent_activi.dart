import 'package:flutter/material.dart';
import 'package:projeto2/screens/components/box_card.dart';
import 'package:projeto2/screens/components/color_dot.dart';
import 'package:projeto2/screens/components/sections/content_division.dart';
import 'package:projeto2/screens/components/themes/theme_color.dart';

class RecentAcitity extends StatelessWidget{
  const RecentAcitity({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
  return Padding(padding: const EdgeInsets.all(16),
  child: BoxCard(boxContent: _RecentAcitityContent() ),
  );
  }
}

class _RecentAcitityContent extends StatelessWidget{
  const _RecentAcitityContent ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [Padding(padding: EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.recentAcitity['dotLar'])),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Saída'),
    Text('R\$ 9900,97', style: Theme.of(context).textTheme.bodyLarge),
  ],
)              
              ],
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.only(right:4.0),
                child:ColorDot(color:ThemeColors.recentAcitity['dotAzu']),),
                Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Entrada'),
    Text('R\$ 9900,97', style: Theme.of(context).textTheme.bodyLarge),
              ],

            ),
          ],
        ),
      ],
    ),
    Padding(
    padding:const EdgeInsets.only(top: 16.0, bottom: 8.0),
    child: Text('Limite de gastos: R\$735.93'),
    ),
    Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: LinearProgressIndicator(
        value: 0.3,
        minHeight: 8,
       color: Color.fromRGBO(40, 218, 242, 1.0)
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 8.0,bottom: 8.0),
      child: ContentDivision(),
    ),
    Text('Esse mês você gastou R\$ 1500.00 com jogos. Tente abaixar esse custo!'),
    TextButton(onPressed: (){}, 
    child: Text('Diga-como', style: TextStyle(fontSize: 16,
    color: Color.fromRGBO(40, 218, 242, 1.0),),
    ),)
      ]
    );
  }
}