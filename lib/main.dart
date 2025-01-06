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
      debugShowCheckedModeBanner: false,
      title: 'Cartes App',
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
        title: Text(
          'Cartes App',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.orange,
        actions: [
          ElevatedButton(
            onPressed: toggleCarte,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: EdgeInsets.all(5),
              side: BorderSide(width: 2.5, color: Colors.orange),
            ),
            child: Icon(Icons.swap_horiz, color: Colors.orange, size: 20),
          ),
        ],
      ),
      body: showCarte0 ? Carte0() : Carte1(),
    );
  }
}
