import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'widgets/input_form.dart';
import 'widgets/display_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBF6bEy1PjQEOYxG9tR4L-TOn0TLB4mxwA",
        authDomain: "firestoreapp-39dde.firebaseapp.com",
        projectId: "firestoreapp-39dde",
        storageBucket: "firestoreapp-39dde.firebasestorage.app",
        messagingSenderId: "493744620884",
        appId: "1:493744620884:web:7267815a325c633410b4c1",
        measurementId: "G-1ERVPVP9RE"
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firestore Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InputForm(),
      routes: {
        '/display': (context) => DisplayData(),
      },
    );
  }
}