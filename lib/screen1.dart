import 'package:flutter/material.dart';
import 'package:myapp1/dimensions1.dart';
import 'package:myapp1/dimensions1.dart';

import 'dimensions1.dart';
void main(){
  runApp(Rainbow1());
}
class Rainbow1 extends StatelessWidget {
  const Rainbow1({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
        Widget1()
    );
  }
}
class Widget1 extends StatefulWidget {
  const Widget1({super.key});

  @override
  State<Widget1> createState() => _List1State();
}

class _List1State extends State<Widget1> {
  static Color color1=Color.fromRGBO(255, 0, 0, 0.5);
  static List<dynamic> a1=Dimensions1.list1;
  var len2=a1.length;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Rainbows")
        ),
        body:
        ListView.builder(itemCount: len2, itemBuilder:(context,index){

          return Padding(padding:EdgeInsets.all(8),
            child:
            Container(
              color: a1[index],
              width: MediaQuery.of(context).size.width*.5,
              height: MediaQuery.of(context).size.height*0.1,
            ),
          );
        }, )
    );
  }
}
