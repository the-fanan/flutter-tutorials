import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final Function _answerHandler;

  Answer(this._answerText, this._answerHandler);

  @override 
  Widget build(BuildContext context) 
  {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color(0xFF276db8),
        child: Text(this._answerText, style: TextStyle(fontSize: 16, color: Colors.white)), 
        onPressed: this._answerHandler,),
    );
  }
}