import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:acara_20/home.dart';
import 'package:acara_20/profile.dart';
import 'package:acara_20/setting.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  List <Widget> list = [Home(), Profile(), Settings()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        body: list[index],
        drawer: MyDrawer (onTap: (ctx, i){
          setState(() {
            index=i;
            Navigator.pop(ctx);
          });
        },),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
              padding: EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('image/nia.png'),
                      ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Siti Hannaniyah S",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color:Colors.white),
                  ),
                  SizedBox(
                    height: 3,
                    ),
                    Text(
                      "naniania05@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => onTap(context, 0),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () => onTap(context, 1),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => onTap(context, 2),
            ),
            Divider(height: 1,),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () => onTap(context, 0),),
          ],
        ),),);
  }
}
