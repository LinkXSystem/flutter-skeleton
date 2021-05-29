import 'package:flutter/material.dart';
import 'package:planter/contants/style.dart';
import 'package:planter/screens/home/screen.dart';

void main() {
  runApp(Planter());
}

class Planter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planter',
      theme: ThemeData(
        scaffoldBackgroundColor: K_BACKGROUND_COLOR,
        primaryColor: K_PRIMARY_COLOR,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: K_TEXT_COLOR),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
