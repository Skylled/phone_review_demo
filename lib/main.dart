import 'package:flutter/material.dart';

import 'src/pages.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '9to5 Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.lightGreen,
      ),
      home: new ReviewListPage(),
      onGenerateRoute: (RouteSettings settings) {
        final List<String> path = settings.name.split('/');
        print(path);
        if (path[1] == 'review') {
          // path[0] should always be ''
          return new MaterialPageRoute(
            // path[2] is the phone's short name
            builder: (BuildContext context) => new PhoneReviewPage(path[2]),
          );
        }
      },
    );
  }
}
