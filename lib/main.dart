import 'package:flutter/material.dart';
import 'package:nuplace/main/views/views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nuplace by Nuconta',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LoadOffersView(),
    );
  }
}
