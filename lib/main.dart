import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'feedbackScreen.dart'; // Import Firebase Core

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
        // Your theme data
      ),
      home: FeedbackScreen(), // Set your home page here
    );
  }
}
