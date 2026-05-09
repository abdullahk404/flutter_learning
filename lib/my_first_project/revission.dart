import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyPracticeScreen()));

class MyPracticeScreen extends StatelessWidget {
  const MyPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // App Bar
        appBar: AppBar(
          // Left side leading section
          leading: IconButton(
            onPressed: () => print("Mane Tapped"),
            icon: const Icon(Icons.menu),
          ),
          // The Middle
          title: const Text("My Apps"),
          centerTitle: true,
          // Right side Actions
          actions: [
            IconButton(
              onPressed: () => print("search Tapped"),
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () => print("settin Tapped"),
              icon: const Icon(Icons.settings),
            ),
          ],

          // The Style
          backgroundColor: Colors.blue.shade200,
          elevation: 4,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt), text: "Camera"),
              Tab(icon: Icon(Icons.photo_library),text: "Gallery", ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Camera Content", style: TextStyle(fontSize: 18)),
            ),
            Center(
              child: Text("Gallery Content", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
