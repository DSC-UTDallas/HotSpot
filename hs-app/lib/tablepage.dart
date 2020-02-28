import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  final String text;

  const TablePage({Key key, this.text}) : super(key: key);

  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(18, 71, 52, 1.0),
        title: Text(widget.text),
        leading: BackButton(),
      ),
        backgroundColor: Colors.grey[200],
        body: const Center(child: Text('TableMap')),         
    );
  }
}