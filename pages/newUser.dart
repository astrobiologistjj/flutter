import 'package:flutter/material.dart';
import 'newUser2.dart';

Widget newUserForm = new Scaffold(
  appBar: new AppBar(
    title: new Text('New User Form'),
    actions: <Widget>[
      new IconButton(icon: const Icon(Icons.navigate_next),
          onPressed: () {
            // Navigator.of(context).push(SecondPage())
          })
    ],
  ),
  body: new Column(
    children: <Widget>[
      new ListTile(
        leading: const Icon(Icons.person),
        title: new TextField(
          decoration: new InputDecoration(
            hintText: "Name",
          ),
        ),
      ),
      new ListTile(
        leading: const Icon(Icons.phone),
        title: new TextField(
          decoration: new InputDecoration(
            hintText: "Phone",
          ),
        ),
      ),
      new ListTile(
        leading: const Icon(Icons.email),
        title: new TextField(
          decoration: new InputDecoration(
            hintText: "Email",
          ),
        ),
      ),
      const Divider(
        height: 1.0,
      ),
      new ListTile(
        leading: const Icon(Icons.label),
        title: const Text('Nick'),
        subtitle: const Text('None'),
      ),
      new ListTile(
        leading: const Icon(Icons.today),
        title: const Text('Birthday'),
        subtitle: const Text('February 20, 1980'),
      ),
      new ListTile(
        leading: const Icon(Icons.group),
        title: const Text('Contact group'),
        subtitle: const Text('Not specified'),
      )
    ],
  ),
);

//void _newUserRadioStateChange(int state){
//  setState(() {
//    if(state == 1){
//      newUserRadio = 1;
//    } else if(state == 2){
//      newUserRadio = 2;
//    } else if(state == 3){
//      newUserRadio = 3;
//    }
//  });
//}

