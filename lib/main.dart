import 'package:flutter/material.dart';
import 'carte0.dart';
import 'carte1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showCarte0 = true;

  void toggleCarte() {
    setState(() {
      showCarte0 = !showCarte0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartes App'),
      ),
      body: showCarte0 ? Carte0() : Carte1(),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleCarte,
        child: Icon(Icons.swap_horiz),
      ),
    );
  }
}