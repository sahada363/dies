
import 'dart:math';

import 'package:flutter/material.dart';
class dies extends StatefulWidget {
  const dies({Key? key}) : super(key: key);

  @override
  State<dies> createState() => _diesState();
}

class _diesState extends State<dies> {
  int leftdicenumber=2;
  int rightdicenumber=1;
  void ChangeDicenumber(){
  setState(() {
    leftdicenumber=Random().nextInt(6)+1;
    rightdicenumber=Random().nextInt(6)+1;

  });
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title:Center(child:Text('DICE APP')),),
      body:
      Row(children: [
        Expanded(child: TextButton(onPressed: (ChangeDicenumber) , child: Image.asset('dies/d$leftdicenumber.jpeg'))),
        Expanded(child: TextButton(onPressed: (ChangeDicenumber) , child: Image.asset('dies/d$rightdicenumber.jpeg'))),
      ],




        ),
    );
  }
}
