import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
            child: Center(
          child: Column(children: [
            Text("Welcome user"),
            SizedBox(
              height: 15,
            )
          ]),
        )),
      ),
    );
  }
}