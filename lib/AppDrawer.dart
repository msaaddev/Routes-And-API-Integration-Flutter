import 'package:flutter/material.dart';

class DrawerList extends StatefulWidget {
  @override
  NewDrawerList createState() => NewDrawerList();
}

class NewDrawerList extends State<DrawerList> {
  List<String> labels = [
    'Today',
    'Products',
    'Direct Materials',
    'Direct Labour',
    'Overheads',
    'Customers',
    'Suppliers',
    'Consultants',
    'Help',
    'Settings',
    'Logout'
  ];

  List<IconData> icons = [
    Icons.email,
    Icons.inbox,
    Icons.group,
    Icons.local_offer,
    Icons.local_offer,
    Icons.group,
    Icons.group,
    Icons.group,
    Icons.help_outline,
    Icons.settings,
    Icons.logout
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.maxFinite,
        child: ListView.builder(
            itemCount: labels.length,
            itemBuilder: (context, index) {
              return Column(children: <Widget>[
                Container(
                    child: index == 1 || index == 7
                        ? Divider(
                            thickness: 3,
                          )
                        : null),
                ListTile(
                  leading: Icon(icons[index], size: 20),
                  title: Text(labels[index],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  dense: true,
                )
              ]);
            }));
  }
}
