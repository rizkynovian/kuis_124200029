import 'package:flutter/material.dart';
import 'package:kuis_124200029/groceries.dart';
import 'package:kuis_124200029/daftar_belanja.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const homepage(),
    );
  }
}

