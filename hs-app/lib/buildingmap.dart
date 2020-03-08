import 'package:flutter/material.dart';

class BuildingMap extends StatefulWidget {
  @override
  _BuildingMapState createState() => _BuildingMapState();
}

class _BuildingMapState extends State<BuildingMap> {
  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'MAP',
          style: TextStyle(
            fontSize: 48,
          ),
        ),
      ),
    ),
      Align(
            alignment: Alignment.topRight,
            child: Transform.scale(
              scale: 1.75,
              origin: Offset(-10, -40),
              child: PopupMenuButton(
                //splashColor: Color.fromARGB(0, 0, 0, 0),
                //color: Colors.white,
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white
                ), 
                itemBuilder: (context) =>
                  <String>['About', 'Feedback', 'Logout']
                  .map<PopupMenuEntry<String>>((String value) {
                    return PopupMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
                },).toList(),
                
              ),
            ),
          ),
        ],
    );
  }
}