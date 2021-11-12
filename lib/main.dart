import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}
var num_1=2;
var num_2=2;
void random(){
  Random rng = new Random();
   num_1=rng.nextInt(5)+1;
   num_2=rng.nextInt(5)+1;
   

}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        appBar:AppBar(
          title: Text('Кости'), backgroundColor: Colors.pink.shade600,
          centerTitle: true,
        ) ,
        body: Center(child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            IconButton(
  icon: Image.asset('images/${num_1}.png'),
  iconSize: 200,
  onPressed: () { setState(() {
               random();
             });},
),
Padding(padding: EdgeInsets.all(20)),
IconButton(
  icon: Image.asset('images/${num_2}.png'),
  iconSize: 200,
  onPressed: () {setState(() {
               random();
             });},
)
          ],
        ), 
        )
        ),);
  }
}
