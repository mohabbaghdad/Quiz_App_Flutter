import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Result extends StatelessWidget{
  final int resultScore ;
  final Function restHandler ;
  Result({this.resultScore, this.restHandler});
  String get resultPhrasae{

    if(resultScore < 10 ){}
  }
  @override
  Widget build(BuildContext context) {

    return Center(child: Column(children: <Widget>[
      Text('You did it ${resultScore}' , style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ),textAlign: TextAlign.center,),
      FlatButton(child: Text("Restart Quiz "), onPressed: restHandler, )
    ],) ,);
  }

}