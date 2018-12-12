import 'package:flutter/material.dart';

//  Reusable widget
class VideoList extends StatelessWidget {

  final listData;

  //  note use of braces {} to denote the params are optional
  const VideoList({Key key, this.listData}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    //  ListView.seperated is used to add a divider between each cell item
    return ListView.separated(
      //  Oppenheimer
      padding: new EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            Container(
              //  full width of the device context
              width: MediaQuery.of(context).size.width,
              height: 200.0,             
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(listData[index].thumbNail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(8.0),
              //  part of a vertically dense list
              dense: true,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  listData[index].channelAvatar,
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(listData[index].title)
              ),
              subtitle: Text("${listData[index].channelTitle} . ${listData[index].viewCount} . ${listData[index].publishedTime} "),
              trailing: Container(
                //margin: EdgeInsets.only(bottom: 8.0),
                child: Icon(Icons.more_vert),
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => Divider(height: 1.0, color: Colors.grey,),
      itemCount: listData.length,
    );
  }
}
