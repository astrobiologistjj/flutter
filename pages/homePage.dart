import 'package:flutter/material.dart';
import 'newUser.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    int newUserRadio;

    void _viewNewUser() {
      // display new page
      Navigator.of(context).push(
          new MaterialPageRoute<void>(
              builder: (BuildContext context){
//                return SecondPage();
                return newUserForm;
              }
          )
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new ButtonTheme(
                  minWidth: 150.0,
                  child: new OutlineButton(
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  borderSide: new BorderSide(color: Theme.of(context).accentColor,),
                  textColor: Theme.of(context).accentColor,
                  child: new Row(
                    textDirection: TextDirection.ltr,
                    children: <Widget>[
                      const Icon(Icons.accessibility),
                      const Text('New User'),
                    ],
                  ),
                  color: Theme.of(context).accentColor,
                  padding: const EdgeInsets.all(8.0),
                  splashColor: Colors.blueGrey,
                  onPressed: _viewNewUser,
                ),
                ),
                new ButtonTheme(
                  minWidth: 150.0,
                  child: new OutlineButton(
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  borderSide: new BorderSide(color: Theme.of(context).accentColor,),
                  textColor: Theme.of(context).accentColor,
                  child: new Row(
                    textDirection: TextDirection.ltr,
                    children: <Widget>[
                      const Icon(Icons.accessibility),
                      const Text('Returning User'),
                    ],
                  ),
                  color: Theme.of(context).accentColor,
                  padding: const EdgeInsets.all(8.0),
                  splashColor: Colors.blueGrey,
                  onPressed: _viewNewUser,
                ),
                ),
//                new ButtonTheme(
//                  minWidth: double.infinity,
//                  child: new MaterialButton(
//                    height: 50.0,
//                    minWidth: 100.0,
//                    child: const Text('Existing user'),
//                    color: Theme.of(context).accentColor,
//                    elevation: 4.0,
//                    padding: const EdgeInsets.all(8.0),
//                    splashColor: Colors.blueGrey,
//                    onPressed: (){},
//                ),
//                )
              ],
            ),
          ],
        ),
      ),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: new Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

