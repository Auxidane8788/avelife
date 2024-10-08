import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/homescreen.dart'; // Ensure you have the correct path

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ave Life',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(), // Set HomeScreen as the initial screen
    );
  }
}
