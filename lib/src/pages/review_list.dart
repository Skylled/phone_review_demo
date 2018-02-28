import 'package:flutter/material.dart';

import '../data.dart';

class ReviewListPage extends StatefulWidget {
  ReviewListPage({Key key}) : super(key: key);

  final String title = '9to5Google Phone Reviews';

  @override
  _ReviewListPageState createState() => new _ReviewListPageState();
}

class _ReviewListPageState extends State<ReviewListPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new ListView(
          children: phoneNames.keys.map((String phone) {
            return new ListTile(
              title: new Text(phoneNames[phone]),
              onTap: () {
                Navigator.of(context).pushNamed('/review/$phone');
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
