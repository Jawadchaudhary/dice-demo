
// import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}
class DicePage extends StatefulWidget {


  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=5;

  void pressbutton (){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });


  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                pressbutton();


              },
                child: Image. asset('assets/dicee$leftDiceNumber.png'),

              ),
            ),

          Expanded(

              child: FlatButton(
                onPressed: (){
                  pressbutton();
                },
              child: Image.asset('assets/dicee$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );

  }
}




