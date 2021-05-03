import 'package:flutter/material.dart';
import 'package:assignment6/AppDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Assignment 5',
        home: Scaffold(
          appBar: AppBar(title: Text('Mobile Application Development')),
          drawer: Drawer(
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
              DrawerList()
            ],
          )),
          body: Column(
            children: [
              Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://i.imgur.com/rG1TxNQ.png',
                    height: 150,
                    width: 150,
                  ),
                ),
              )),
              Container(
                width: 400,
                child: Padding(
                  padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Text(
                      'Screen Navigation and Web API Integration Assignment',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 22,
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
