import 'package:flutter/material.dart';
import 'package:acara_19/route.dart';
import 'package:acara_19/screen.dart';

class RouteGenerator{
  static Route<dynamic> generatorRoute(RouteSettings settings){
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/about':
        return MaterialPageRoute(builder: (_) => AboutPage());
      default:
      return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
    return Scaffold(
      appBar: AppBar(title: Text("Error")),
      body: Center(child: Text('Error Page')),
      );
    });
  }
}