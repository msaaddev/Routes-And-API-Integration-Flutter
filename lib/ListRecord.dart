import 'package:flutter/material.dart';
import 'package:assignment6/AppDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListRecord extends StatefulWidget {
  @override
  NewListRecord createState() => NewListRecord();
}

class NewListRecord extends State<ListRecord> {
  var data = [];

  Future fetchRecords() async {
    final apiURL = Uri.parse('https://pcc.edu.pk/ws/list/hms_consumers.php');
    var response = await http.get(apiURL);
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      return data;
    } else {
      print('fail');
      print(response);
    }
  }

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
            child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Card(
                          margin: EdgeInsets.only(top: 30),
                          child: Container(
                            width: 350,
                            padding: EdgeInsets.only(top: 40, bottom: 20),
                            child: Column(
                              children: [
                                Text(
                                  'All Records',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 22,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: ElevatedButton(
                                      child: Text('View Records'),
                                      style: ElevatedButton.styleFrom(
                                        onPrimary: Colors.white,
                                        elevation: 5,
                                      ),
                                      onPressed: () async {
                                        await fetchRecords();

                                        print('data');
                                        print(data[1]['lastName']);
                                        return showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return CupertinoAlertDialog(
                                                title: Text('Records Fetched',
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
                          )),
                    ),
                  ],
                ),
                Column(
                  children: data.length != 0
                      ? data.map((e) {
                          if (e['id'] != 1) {
                            Center(
                              child: Card(
                                margin: EdgeInsets.only(top: 30, bottom: 30),
                                child: Container(
                                  width: 350,
                                  padding: EdgeInsets.only(top: 40, bottom: 20),
                                  child: Column(
                                    children: [
                                      // first name
                                      Container(
                                          padding: EdgeInsets.only(
                                              top: 40, bottom: 10, left: 30),
                                          child: Row(children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 30),
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
                                              child: Text(e['firstName']),
                                            ),
                                          ])),
                                      // last name
                                      Container(
                                          padding: EdgeInsets.only(
                                              top: 40, bottom: 10, left: 30),
                                          child: Row(children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 30),
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
                                              child: Text(e['lastName']),
                                            ),
                                          ])),
                                      // gender
                                      Container(
                                          padding: EdgeInsets.only(
                                              top: 40, bottom: 10, left: 30),
                                          child: Row(children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 30),
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
                                              child: Text(e['gender']),
                                            ),
                                          ])),
                                      // email
                                      Container(
                                          padding: EdgeInsets.only(
                                              top: 40, bottom: 10, left: 30),
                                          child: Row(children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 30),
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
                                              child: Text(e['email']),
                                            ),
                                          ])),
                                      // phone number
                                      Container(
                                          padding: EdgeInsets.only(
                                              top: 40, bottom: 10, left: 30),
                                          child: Row(children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(right: 30),
                                              child: Text(
                                                'Number',
                                                style: TextStyle(
                                                  fontFamily: 'Raleway',
                                                  fontSize: 14,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 200,
                                              child: Text(e['phone']),
                                            ),
                                          ])),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }
                        }).toList()
                      : [
                          Container(
                            child: Text('Hello'),
                          )
                        ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
