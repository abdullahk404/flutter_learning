import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main( )=> runApp(MaterialApp(
 debugShowCheckedModeBanner:false,
home: SystemDashboard(),
));
// Stateful widget because we want to toggle a status
class SystemDashboard extends StatefulWidget{
 @override
 SystemDashboardState createState()=> SystemDashboardState();
}

class SystemDashboardState extends State<SystemDashboard> {
 @override
 Widget build (BuildContext context ){
  return Scaffold(
   backgroundColor:Colors.grey[200],
   body: Column (
    children: [
     Container(
      height: 200,
      width:double.infinity,
      color: Colors.blueGrey,
     )

    ],
   )
  );
 }
}