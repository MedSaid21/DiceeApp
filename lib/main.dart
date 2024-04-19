import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.green,
          ),
           body: DicePage(),
        ),

      )
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Random random = Random();

  /*const DicePage({super.key});*/

  var rightImage = 1;
  var lefttImage = 1;
  void updateImages(){
    lefttImage =1+ random.nextInt(6);
    rightImage = 1+random.nextInt(6);
  }
  /*var min =1 ;
  var max = 6;*/
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Expanded(

            child: TextButton(

              child: Image.asset('images/dice$lefttImage.png'),
              onPressed: (){
                setState(() {
                  updateImages();
                });

              },
            ),
          ),

          Expanded(

            child: TextButton(
              onPressed: (){
                setState(() {
                  updateImages();
                });
              },
              child: Image.asset('images/dice$rightImage.png'),
            ),
          ),


        ],
      ),
    );
  }
}
