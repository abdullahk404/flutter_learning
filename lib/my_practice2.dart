import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Column(
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
                  ))
            ],
          ),
          SizedBox(height: 60,),
          Text("ELIN TECHNOLOGIES ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on,size:16,color: Colors.red,),
              Text("Islamabad",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
          Padding(padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5)

                ),
              ),

          ),
         
          
        ],
        
        
      ),
      
    );
  }
}
