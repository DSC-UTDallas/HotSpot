import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.grey[200],
          body: const Center(child: Text('Camera Goes Here')),
          
          floatingActionButton: IconButton(
            icon: Icon(Icons.keyboard_arrow_down), 
            onPressed: null,
            iconSize: 60,
            ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,  
          
        );
  }
}