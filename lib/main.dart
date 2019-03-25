import 'package:flutter/material.dart';
import './pages/home.dart';

/* Debug */
//import 'package:flutter/rendering.dart';


void main() {
//  debugPaintSizeEnabled = true;
//  debugPaintBaselinesEnabled = true;
//  debugPaintPointersEnabled = true;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowMaterialGrid: true,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.red,
          accentColor: Colors.deepPurple),
      home: HomePage()
    );
  }
}
