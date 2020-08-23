import 'package:flutter/material.dart';
void main(){
  //types: int, double, num string
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return MaterialApp(home: Text('Hello World!'),);
  }
}