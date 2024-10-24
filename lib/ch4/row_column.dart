import 'package:flutter/material.dart';
import './widgets/icon_widget.dart';
import './widgets/header_widget.dart';
import './widgets/image_widget.dart';
import './widgets/content_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('layout test'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            HeaderWidget(),
            ImageWidget(),
            IconWidget(),
            ContentWidget()
          ],
        )),
      ),
    );
  }
}
