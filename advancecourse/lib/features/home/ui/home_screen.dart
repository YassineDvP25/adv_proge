import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home',style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}