import 'package:flutter/material.dart';
import 'camerapage.dart';
import 'buildinglist.dart';
import 'scanbutton.dart';
import 'package:splashscreen/splashscreen.dart';

String text = 'test';

void main() {
  runApp(MaterialApp(
    title: 'Room Locator', 
    home: new HomeScreen(), 
    
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatefulWidget {
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text('Welcome In SplashScreen',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    );
    
    final controller = PageController(
      initialPage: 0,
    ); 
    
    // RGBO orange: 223,117,0, 1.0 
    // RGBO green: 18, 71, 52, 1.0

    return PageView(

      controller: controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        CameraPage(),
        Scaffold(
          backgroundColor: Colors.grey[900], 
          body: BuildingList(),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Color.fromRGBO(100, 100, 100, 1.0),
            backgroundColor: Color.fromRGBO(20, 20, 20, 1.0),
            selectedItemColor: Color.fromRGBO(223,117,0, 1.0), 
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
              icon: Icon(Icons.format_list_bulleted),
              title: Text('List'),
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('Map'),
            ),
            ],
            
            
          ),
          floatingActionButton: Transform.translate(
            offset: const Offset(0, 10),
            child: ScanButton(controller: controller),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          
        ),
      ],
    );
  }
}

class AfterSplash {
}




