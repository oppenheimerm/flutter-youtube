import 'package:flutter/material.dart';
import 'package:flutter_youtube_app/common_widgets/video_list.dart';
import 'package:flutter_youtube_app/models/youtube_model.dart';


class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VideoList(listData: youtubeData);
  }
}