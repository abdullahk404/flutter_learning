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
    final List<String> services = [
      "Wed Development",
      "QA",
      "UI/UX Designing",
      "Wed Designing",
          "App Development ",
          "Designing ",
          "QA",
          "UI/UX Designing",
          "Wed Designing",

    ];
    final List<String> cities=[
      "Islamabad","Lahore","Karachi","Baluchistan","Bahawalpur","Bahawalnager","Hasipur","Muree","Kashmir","Abtabad","Rajanpur","Rawalpindi","Muzaffarabad","Mainwali","Patoki",
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              // Allows profile pic to hang over the edge
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      "ABDULLAH",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 80, color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Text(
              "ELINE TECHNOLOGIES ",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            // ***************************** ListView.Builder
            SizedBox(
              height: 50,
            child:ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: cities.length,
              separatorBuilder: (context, int index)=>
                VerticalDivider(color: Colors.grey[400],
                thickness: 1,
                width: 30,
                indent: 10,
                endIndent: 10) ,
              itemBuilder: (context,index){
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.location_on,size: 16,color: Colors.blue,),
                    SizedBox(width: 5),
                    Text(cities[index],
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[800]),
                    ),],
                );
              }

            )

            ),
          // ***************************** ScrollView
          /*  SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.location_on, size: 16, color: Colors.red),
                    Text(
                      "Islamabad",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.location_on, size: 16, color: Colors.red),
                    Text(
                      "Rawalpindi",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.location_on, size: 16, color: Colors.red),
                    Text(
                      "Lahore",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.location_on, size: 16, color: Colors.red),
                    Text(
                      "Kashmir",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.location_on, size: 16, color: Colors.red),
                    Text(
                      "Karachi",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.location_on, size: 16, color: Colors.red),
                    Text(
                      "Sindh",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.location_on, size: 16, color: Colors.red),
                    Text(
                      "Baluchistan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.location_on, size: 16, color: Colors.red),
                    Text(
                      "Bahawalpur",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.location_on, size: 16, color: Colors.red),
                    Text("Mare", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 15),
                    Icon(Icons.location_on, size: 16, color: Colors.red),
                    Text(
                      "Bahawalnager",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.location_on, size: 16, color: Colors.red),
                    Text(
                      "Abtabad",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),*/

            /* Container(
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
            ),),*/

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: services.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.terminal, color: Colors.blueGrey),
                      SizedBox(width: 15),
                      Text(
                        services[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
