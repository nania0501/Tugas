import 'package:acara_20/home.dart';
import 'package:flutter/material.dart';
import 'package:acara_20/main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Pref'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: _isLoading? Center(child: Text('Wait...'),) : Column(
          children: <Widget>[
            TextField(
              controller: _email,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextField(
              controller: _pass,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Login'),
              onPressed: _login,
            )
          ],
        ),
      ),
    );
  }

  void _login() async {
    if (_email.text.isNotEmpty && _pass.text.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });

      //SHARED PREFERENCES

      Future.delayed(Duration(seconds: 2), () {
        if (_email.text == 'naniania05@gmail.com' && _pass.text == '98765') {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (c)=> Home()));
            }
      });
    }
  }
}