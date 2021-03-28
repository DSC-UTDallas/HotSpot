import 'package:flutter/material.dart';
import 'dart:async';
import 'homeScreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

String text = 'test';

void main() {
  runApp(MaterialApp(
    title: 'Room Locator', 
    home:  new SplashScreen(), 
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new HomeScreen()
    },
    
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
{
  startTime() async 
  {
    var _duration = new Duration(seconds: 3);
    
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() 
{
  Navigator.of(context).pushReplacementNamed('/HomeScreen');
}

@override
void initState() {
  super.initState();
  startTime();
}

  @override
  Widget build(BuildContext context) 
  {
    // TODO: implement build

     return new Scaffold(
    body: new Center(
      child: new Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
           children:<Widget>[ new Image.asset('cover.png'),Container(height: 75),SpinKitFadingCircle(
  color: Colors.blue,
  size: 50.0,
)] ) 
    ),
      
    backgroundColor: Colors.blue[50],
          
      
  );

  }

}

