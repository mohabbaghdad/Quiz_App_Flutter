import 'package:flatter_complete/quiz.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main(){
 runApp(new MyApp( ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _totalScore = 0;
   var _questionChange = 0 ;
   static const _questions = [
     {'questionText' : 'What is ypur fav Animal' ,
      'answers' : [{'text': 'Cat','score':10},{'text': 'Dog','score':20},{'text':'Monkey','score':30}]
     },
    {'questionText' : 'What is ypur fav Color' ,
    'answers' : [{'text': 'Black','score':10},{'text': 'White','score':20},{'text':'Blue','score':30}]
    },
    {'questionText' : 'What is ypur fav Subject' ,
    'answers' : [{'text': 'English','score':10},{'text': 'Italy','score':20},{'text':'Arabic','score':30}]
    }
    ];

   void _answerQuestion1(int score )
   {
    _totalScore += score ;
     setState(() {
       _questionChange = _questionChange + 1 ;
       print('question lenth = ${_questions.length}');
       print("Corret");
     });
   }
   void _restQuiz()
   {
     setState(() {
       _totalScore = 0;
       _questionChange = 0 ;
     });
   }
   @override
  Widget build(BuildContext context) {
     return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("hello World"),),
      body: _questionChange < _questions.length ? Quiz(questions: _questions, questionIndex: _questionChange, answerQuestion: _answerQuestion1)
           : Result(resultScore: _totalScore,restHandler: _restQuiz,),
    
    ));
  }
}