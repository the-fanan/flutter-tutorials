import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main(){
  //types: int, double, num string
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget{
 
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(home: Home(),);
  }
}

class Home extends StatefulWidget{
  @override 
  HomeState createState() {
    return HomeState();
  }
}
// underscore for private properties and classes
class HomeState extends State<Home> {
  int count = 0;
  String _answer = "";
  void increaseCount(){
    setState(() {
      this.count++;
    });
  }

  void decreaseCount(){
    setState(() {
      this.count--;
    });
  }

  void selectAnswer(String answer){
    setState(() {
      this._answer = answer;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("Akiddie"),
      ),
      body: Column(children: <Widget>[
        Row(children: <Widget>[
          RaisedButton(child: Text("Increase"), onPressed: increaseCount,), 
          RaisedButton(child: Text("Decrease"), onPressed: decreaseCount,), 
        ]),
        Text('$count'),
        Question('What is the website of the NSCDC?'),
        Text('Answer: ' + this._answer),
        //notice the anonymous function here
        Answer("www.nscdc that's all",(){selectAnswer("www.nscdc that's all");} ),
        Answer("www.nscdc.com", (){selectAnswer("www.nscdc.com");} ),
        Answer("I don't know", (){selectAnswer("I don't know");} ),
        ],
      ),
    ),
    );
  }
}