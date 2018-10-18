import 'package:flutter/material.dart';

Widget newUserForm = new Scaffold(
  appBar: new AppBar(
    title: new Text('Landscape Form'),
    actions: <Widget>[
      new IconButton(icon: const Icon(Icons.save),
          onPressed: () {})
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
      ),
    ],
  ),
);
