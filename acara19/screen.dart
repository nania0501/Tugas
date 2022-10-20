



import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    debugShowCheckedModeBanner: false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Routing With TIF C'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children:[
            ElevatedButton(                
              onPressed: () {
                Navigator.pushNamed(context, '/about'); 
              },
              child: Text('About Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halaman-404');
              },
              child: Text('Halaman Lain'),
            ),    
          ],
        ),
      ),
    );
  }
}
class AboutPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Kembali'),
        ),
      ),
    );
  }
}