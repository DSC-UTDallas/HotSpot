import 'package:flutter/material.dart';
import 'tablepage.dart';

final List<String> entries = <String>['1', '2', '3', '4', '5', '6', '7', '8', '9'];
final List<String> avail = <String>['23/45', '13/45','43/45','9/45','20/45','34/45','33/45','18/45','41/45'];

class BuildingList extends StatefulWidget {

  @override
  _BuildingListState createState() => _BuildingListState();
}

class _BuildingListState extends State<BuildingList> {
  //String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Stack(
        children: <Widget>[
          ListView.separated(
              padding: const EdgeInsets.all(30),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Color.fromRGBO(18, 71, 52, 1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TablePage(
                                text: 'Building ${entries[index]}',
                              )),
                          );
                          print('Building ${entries[index]}');
                        },
                        child: Image(
                          image: NetworkImage('https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
                          ),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      ),
                      ListTile(
                        
                        leading: Text(
                          'Building ${entries[index]}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        title: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            '${avail[index]}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        subtitle: Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            width: 60,
                            child: Text(
                              'tables',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TablePage(
                                text: 'Building ${entries[index]}',
                              )),
                          );
                          print('Building ${entries[index]}');
                        },

                      ),
                    ],
                  ),
                );
              },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Transform.scale(
              scale: 1.75,
              origin: Offset(-10, -40),
              child: PopupMenuButton(
                //splashColor: Color.fromARGB(0, 0, 0, 0),
                //color: Colors.white,
                icon: Icon(Icons.more_vert,
                color: Colors.white), 
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
    ),
    );
  }
}