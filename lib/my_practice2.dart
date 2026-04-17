import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(
  MaterialApp(debugShowCheckedModeBanner: false, home: SystemDashboard()),
);

// Stateful widget because we want to toggle a status
class SystemDashboard extends StatefulWidget {
  @override
  SystemDashboardState createState() => SystemDashboardState();
}

class SystemDashboardState extends State<SystemDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body:SingleChildScrollView(
        child:
      Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none, // Allows profile pic to hang over the edge
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Center(
                  child: Text(
                    "ABDULLAH",
                    style: TextStyle(color: Colors.white ,letterSpacing: 2, fontWeight: FontWeight.bold),
                  ),

                ),
              ),
              Positioned(
                  bottom:-50,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child:Icon( Icons.person,size:80,color: Colors.grey,),

                  )
              )
            ],
          ),
          SizedBox(height: 60),
          Text("ELINE TECHNOLOGIES ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
child: Padding(
  padding: const EdgeInsets.all(12),
  child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.location_on,size:16,color: Colors.red,),
                Text("Islamabad",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 15),
                Icon(Icons.location_on,size:16,color: Colors.red,),
                Text("Rawalpindi",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 15),
                Icon(Icons.location_on,size:16,color: Colors.red,),
                Text("Lahore",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 15),
                Icon(Icons.location_on,size:16,color: Colors.red,),
                Text("Kashmir",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 15),
                Icon(Icons.location_on,size:16,color: Colors.red,),
                Text("Karachi",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 15),
                Icon(Icons.location_on,size:16,color: Colors.red,),
                Text("Sindh",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 15),
                Icon(Icons.location_on,size:16,color: Colors.red,),
                Text("Baluchistan",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 15),
                Icon(Icons.location_on,size:16,color: Colors.red,),
                Text("Bahawalpur",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 15),
                Icon(Icons.location_on,size:16,color: Colors.red,),
                Text("Mare",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 15),
                Icon(Icons.location_on,size:16,color: Colors.red,),
                Text("Bahawalnager",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 15),
                Icon(Icons.location_on,size:16,color: Colors.red,),
                Text("Abtabad",style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
),),

         Container(
           margin: EdgeInsets.all(20),
           padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
           width: double.infinity,
           alignment: Alignment.centerLeft,
           decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Icon(Icons.web, color: Colors.blueGrey),
               Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
             ],
         ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal:10 ),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal:10 ),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal:10 ),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal:10 ),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal:10 ),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal:10 ),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal:10 ),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal:10 ),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),border:Border.all(color: Colors.white10,width: 1) ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.web, color: Colors.blueGrey),
                Text("Wed Development ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),),

          
        ],

        
      ),

    ),);
  }
}
