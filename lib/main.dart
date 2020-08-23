import 'package:flutter/material.dart';

import './question.dart';

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
        ],
      ),
    ),
    );
  }
}