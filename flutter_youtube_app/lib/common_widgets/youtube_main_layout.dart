import 'package:flutter/material.dart';
import 'package:flutter_youtube_app/common_widgets/bottom_navigation.dart';

//  House the app bar and the bottom tabs
class YoutubeMain extends StatefulWidget{
  @override
  _YoutubeMainState createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/img/youtube_logo.png", 
          height: 22.0,
          width: 98.0
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        //  app bar actions (icons)
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){},
          ),                    
        ],
      ),

      body: new BottomNavigation(
        bottomNavigationBarType: BottomNavigationBarType.fixed,
        tabSelectColor: Colors.red
        ),
    );
  }
}