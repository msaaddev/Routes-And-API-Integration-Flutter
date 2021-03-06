import 'package:flutter/material.dart';
import 'package:assignment6/main.dart';
import 'package:assignment6/AddRecord.dart';
import 'package:assignment6/ListRecord.dart';

class DrawerList extends StatefulWidget {
  @override
  NewDrawerList createState() => NewDrawerList();
}

class NewDrawerList extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        Container(
          height: 180.0,
          child: DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://i.imgur.com/rG1TxNQ.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.arrow_forward_ios),
          title: Text('Home Screen',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 16,
                color: Colors.grey[600],
              )),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyApp();
            }));
          },
        ),
        ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text('Add Records',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16,
                  color: Colors.grey[600],
                )),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddRecord();
              }));
            }),
        ListTile(
          leading: Icon(Icons.arrow_forward_ios),
          title: Text('List Records',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 16,
                color: Colors.grey[600],
              )),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListRecord();
            }));
          },
        ),
      ],
    ));
  }
}
