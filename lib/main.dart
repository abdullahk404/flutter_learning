import 'package:flutter/material.dart';/*

/// 🔰 STEP 0: App entry point
void main() {
  // Sab se pehle Flutter yahin se start hota hai
  runApp(const MyApp());
}

/// 🟢 STEP 1: Root Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Root widget ka build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LifecycleScreen(), // ONE SCREEN
    );
  }
}

/// 🟡 STEP 2: StatefulWidget (ONE SCREEN)
class LifecycleScreen extends StatefulWidget {
  const LifecycleScreen({super.key});

  // 🟠 STEP 3: createState()
  // Yahan State object create hota hai
  @override
  State<LifecycleScreen> createState() => _LifecycleScreenState();
}

/// 🔵 STEP 4: State class (actual lifecycle yahan hota hai)
class _LifecycleScreenState extends State<LifecycleScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    // 🟣 STEP 5: initState()
    // ➜ Sirf 1 baar call hota hai
    // ➜ Initial setup (API, controller, default values)
    debugPrint("1️⃣ initState called");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 🟣 STEP 6: didChangeDependencies()
    // ➜ Theme / MediaQuery / InheritedWidget change par
    debugPrint("2️⃣ didChangeDependencies called");
  }

  @override
  Widget build(BuildContext context) {
    // 🔴 STEP 7: build()
    // ➜ UI yahan draw hoti hai
    // ➜ setState() ke baad dobara call hota hai
    debugPrint("3️⃣ build called");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Lifecycle – One Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // UI text showing state
            Text(
              "Counter: $counter",
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),

            const SizedBox(height: 20),

            // 🔘 Button to trigger setState
            ElevatedButton(
              onPressed: () {
                // 🟠 STEP 8: setState()
                // ➜ State change
                // ➜ build() dobara call hoga
                setState(() {
                  counter++;
                });
                debugPrint("4️⃣ setState called");
              },
              child: const Text("Increase Counter"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant LifecycleScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 🟤 STEP 9: didUpdateWidget()
    // ➜ Parent widget new configuration bheje
    debugPrint("5️⃣ didUpdateWidget called");
  }

  @override
  void deactivate() {
    // ⚫ STEP 10: deactivate()
    // ➜ Widget temporary tree se remove hota hai
    debugPrint("6️⃣ deactivate called");
    super.deactivate();
  }

  @override
  void dispose() {
    // ⚫ STEP 11: dispose()
    // ➜ Widget permanently destroy hota hai
    // ➜ Memory cleanup yahan hoti hai
    debugPrint("7️⃣ dispose called");
    super.dispose();
  }
}*/
