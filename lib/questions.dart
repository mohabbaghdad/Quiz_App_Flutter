import 'package:flutter/material.dart';
import './main.dart';

class Question extends StatelessWidget{
  final String questions ;

  Question(this.questions);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
     width: double.infinity,
     margin: EdgeInsets.all(10), 
      child:  Text(questions,style: TextStyle(fontSize: 28),textAlign: TextAlign.right,)
          
    ) ;
  }

}