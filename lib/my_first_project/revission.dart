import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyPracticeScreen()));

class MyPracticeScreen extends StatefulWidget {
  const MyPracticeScreen({super.key});

  @override
  State<MyPracticeScreen> createState() => _MyPracticeScreenState();
}

class _MyPracticeScreenState extends State<MyPracticeScreen> {
  //                                 Forms
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //                          Drawer
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue.shade200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,

                      backgroundColor: Colors.black,
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(8.3),
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/3046/3046121.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text("Tiktok", style: TextStyle(fontSize: 25)),
                  ],
                ),
              ),
              //                                 Drawer Menu Items
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.language),
                title: const Text("Language"),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text("Notifications"),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: const Text("Privacy"),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.share),
                title: const Text("Share"),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.stars),
                title: const Text("Rate Us"),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: const Icon(Icons.download),
                title: const Text("Downloads"),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        //                                        App Bar
        appBar: AppBar(
          // Left side leading section
          // leading: IconButton(
          //   onPressed: () => print("Mane Tapped"),
          //   icon: const Icon(Icons.menu),
          // ),
          //                                 AppBar Tittle
          title: const Text("My Apps"),
          centerTitle: true,
          //                                 AppBar Right icons
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
          //                                   TabBar
          bottom: const TabBar(
            unselectedLabelColor: Colors.blueGrey,
            labelColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt), text: "Camera"),
              Tab(icon: Icon(Icons.photo_library), text: "Gallery"),
              Tab(icon: Icon(Icons.book), text: "Forms"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Center(
              child: Text("Camera Content", style: TextStyle(fontSize: 18)),
            ),
            const Center(
              child: Text("Gallery Content", style: TextStyle(fontSize: 18)),
            ),
                                                // Form
            Padding(
              padding: const EdgeInsetsGeometry.all(16),
              child: Form(
                key: _formKey, // Teh Clipboard
                child: Column(
                  children: [
                    const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                      // the Security Guard
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Your Email";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.password)
                      ),
                      validator: (value){
                        if (value== null || value.isEmpty){
                          return "Please Enter Your Password ";
                        }
                        return null;

                      },

                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // check if the form is valid
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Processing Data ..."),
                            ),
                          );
                        }
                      },
                      child: const Text("Submit"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
