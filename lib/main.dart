import 'package:flutter/material.dart';
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

class HomeState extends State<Home> {
  int count = 0;
  void increaseCount(){
    setState(() {
      this.count++;
    });
    
    print(this.count);
  }

  void decreaseCount(){
    setState(() {
      this.count--;
    });
    
    print(this.count);
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
        ],
      ),
    ),
    );
  }
}