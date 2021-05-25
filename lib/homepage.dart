import 'package:flutter/material.dart';
import 'wetherData.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    weatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
