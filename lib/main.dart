import 'package:flutter/material.dart';
import 'home_modul.dart';
import 'package:provider/provider.dart';
import 'increment.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      builder: (context) => Increment(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeModul(),
    );
  }
}



