import 'package:flutter/material.dart';
import 'package:assignment6/AppDrawer.dart';

class ListRecord extends StatefulWidget {
  @override
  NewListRecord createState() => NewListRecord();
}

class NewListRecord extends State<ListRecord> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Record',
      home: Scaffold(
        appBar: AppBar(title: Text('List Records')),
        drawer: DrawerList(),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Text('List Record'),
          ),
        ),
      ),
    );
  }
}
