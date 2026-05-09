import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(const MaterialApp(home:MyPracticeScreen()));
class MyPracticeScreen extends StatelessWidget{
const MyPracticeScreen({super.key});
@override
  Widget build(BuildContext context){
  return Scaffold(
    // App Bar 
    appBar: AppBar(
      // Left side leading section
      leading: IconButton(
          onPressed: ()=>print("Mane Tapped"),
          icon:const Icon(Icons.menu)),
      // The Middle
      title: const Text("My Apps" ),
      centerTitle: true,
      // Right side Actions
      actions: [

        IconButton(onPressed: ()=> print("search Tapped"), icon: const Icon(Icons.search)),
        IconButton(onPressed: ()=>print("settin Tapped"), icon: const Icon(Icons.settings))

      ],

      // The Style
      backgroundColor: Colors.blue.shade200,
      elevation: 4,
    ),
    body: const Center(
      child: Text("Check your AppBar on the Mobile",
      style: TextStyle(fontSize: 18))
    ),
  );
}
}