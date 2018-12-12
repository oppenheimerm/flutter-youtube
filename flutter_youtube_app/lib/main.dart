import 'package:flutter/material.dart';
import 'package:flutter_youtube_app/common_widgets/youtube_main_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Youtube UI",
      home: new YoutubeMain(),
    );
  }
}
