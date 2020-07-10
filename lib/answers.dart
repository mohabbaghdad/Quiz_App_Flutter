import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
class Answers extends StatelessWidget{
  final Function selectHandler ;
  final String answerText ;
  Answers(this.selectHandler, this.answerText);




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,

      child:
      RaisedButton(
        child: Text(answerText),onPressed: selectHandler ,color: Colors.blue,textColor: Colors.white,),
    );
  }

}