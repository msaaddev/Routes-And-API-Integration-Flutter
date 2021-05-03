import 'package:flutter/material.dart';
import 'package:assignment6/AppDrawer.dart';

class AddRecord extends StatefulWidget {
  @override
  NewRecordList createState() => NewRecordList();
}

class NewRecordList extends State<AddRecord> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Record',
      home: Scaffold(
        appBar: AppBar(title: Text('Add Records')),
        drawer: DrawerList(),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Text('Add Record'),
          ),
        ),
      ),
    );
  }
}
