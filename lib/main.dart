import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MysimpleBox()  ));
}
/*
// The stateless widget
class MysimpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("i am a Stateless widget"));
  }
}*/
class MysimpleBox extends StatefulWidget
{
  @override
  MysimpleBoxState createState()=>MysimpleBoxState();
}
class MysimpleBoxState extends State<MysimpleBox>
{
  int n = 0;
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        setState(() {
          n++;
        });
      },
      child:  Scaffold(body: Text('$n'),
      ),
    );
  }
}