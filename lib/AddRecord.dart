import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:assignment6/AppDrawer.dart';

class AddRecord extends StatefulWidget {
  @override
  NewRecordList createState() => NewRecordList();
}

class NewRecordList extends State<AddRecord> {
  TextEditingController firstName = new TextEditingController();
  TextEditingController lastName = new TextEditingController();
  TextEditingController gender = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phoneNum = new TextEditingController();

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
              child: Center(
                child: Card(
                  margin: EdgeInsets.only(top: 30),
                  child: Container(
                    width: 350,
                    padding: EdgeInsets.only(top: 40, bottom: 20),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'Enter following fields',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 22,
                            ),
                          ),
                        ),
                        // first name
                        Container(
                            padding:
                                EdgeInsets.only(top: 40, bottom: 10, left: 30),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.only(right: 30),
                                child: Text(
                                  'First Name',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                child: TextField(
                                  controller: firstName,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Enter your first name...',
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              )
                            ])),
                        // last name
                        Container(
                            padding:
                                EdgeInsets.only(top: 10, bottom: 10, left: 30),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.only(right: 33),
                                child: Text(
                                  'Last Name',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                child: TextField(
                                  controller: lastName,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Enter your last name...',
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              )
                            ])),
                        // gender
                        Container(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              left: 30,
                            ),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.only(right: 50),
                                child: Text(
                                  'Gender',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                child: TextField(
                                  controller: gender,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Enter your gender...',
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              )
                            ])),
                        // email
                        Container(
                            padding:
                                EdgeInsets.only(top: 10, bottom: 10, left: 30),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.only(right: 58),
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                child: TextField(
                                  controller: email,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Enter your email...',
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              )
                            ])),
                        // phone number
                        Container(
                            padding:
                                EdgeInsets.only(top: 10, bottom: 10, left: 30),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  'Phone Number',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                              Container(
                                width: 200,
                                child: TextField(
                                  controller: phoneNum,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Enter your phone number...',
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              )
                            ])),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                              child: Text('Add Records'),
                              style: ElevatedButton.styleFrom(
                                onPrimary: Colors.white,
                                elevation: 5,
                              ),
                              onPressed: () async {
                                return showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CupertinoAlertDialog(
                                        title: Text('Record Added',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 24,
                                            )),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text('Ok'))
                                        ],
                                      );
                                    });
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
