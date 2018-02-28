import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../data.dart';

class PhoneReviewPage extends StatelessWidget {
  PhoneReviewPage(this.phone, {Key key}) : super(key: key);

  final String phone;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("${phoneNames[phone]} Review"),
      ),
      body: new Markdown(data: reviews[phone]),
    );
  }
}
