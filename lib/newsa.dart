import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
    );
  }
}

class Sajit extends StatelessWidget {
  Sajit({super.key});

  var arrData = [
    {'name': 'sajit', 'mobno': '981888711', 'unread': '2'},
    {'name': 'suman', 'mobno': '981858711', 'unread': '4'},
    {'name': 'safal', 'mobno': '9816858761', 'unread': '1'},
    {'name': 'binaya', 'mobno': '9818587455', 'unread': '3'},
    {'name': 'manish', 'mobno': '981858453', 'unread': '2'},
    {'name': 'sajit', 'mobno': '981888711', 'unread': '5'},
    {'name': 'suman', 'mobno': '981858711', 'unread': '1'},
    {'name': 'safal', 'mobno': '9816858761', 'unread': '5'},
    {'name': 'binaya', 'mobno': '9818587455', 'unread': '3'},
    {'name': 'manish', 'mobno': '981858453', 'unread': '2'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapping list'),
      ),
      body: Container(
        child: ListView(
            children: arrData
                .map((value) => ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text(
                          value['name'].toString()), //retrieving value of name
                      subtitle: Text(value['mobno'].toString()),
                      trailing: CircleAvatar(
                          radius: 11, child: Text(value['unread'].toString())),
                    ))
                .toList()),
      ),
    );
  }
}
