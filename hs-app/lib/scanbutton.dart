import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {

  final PageController controller;

  const ScanButton({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
            scale: 1.25,
            child: FloatingActionButton(
              backgroundColor: Color.fromRGBO(223,117,0, 1.0), 
              onPressed: () => controller.jumpToPage(0),
              child: Icon(Icons.crop_free),
            ),
    );
  }
}