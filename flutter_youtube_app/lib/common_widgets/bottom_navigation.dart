import 'package:flutter/material.dart';
import 'package:flutter_youtube_app/pages/page_home.dart';

enum TabItem { home, trending, subscriptions, inbox, library }

String tabItemName(TabItem tabItem) {
  switch (tabItem) {
    case TabItem.home:
      return "home";
    case TabItem.trending:
      return "trending";
    case TabItem.subscriptions:
      return "subscriptions";
    case TabItem.inbox:
      return "inbox";
    case TabItem.library:
      return "library";
  }
  return null;
}

class BottomNavigation extends StatefulWidget {

  final BottomNavigationBarType bottomNavigationBarType;
  final Color tabSelectColor;

  //  Note use of constructor in stateful widgets
  const BottomNavigation({Key key, this.bottomNavigationBarType, this.tabSelectColor});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  TabItem currentItem = TabItem.home;

  _onSelectTab(int index) {
    switch (index) {
      case 0:
        _updateCurrentItem(TabItem.home);
        break;
      case 1:
        _updateCurrentItem(TabItem.trending);
        break;
      case 2:
        _updateCurrentItem(TabItem.subscriptions);
        break;
      case 3:
        _updateCurrentItem(TabItem.inbox);
        break;
      case 4:
        _updateCurrentItem(TabItem.library);
        break;
    }
  }

  _updateCurrentItem(TabItem item) {
    setState(() {
      currentItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody(){
    switch (currentItem){
      case TabItem.home:
        return Center(
          child: new PageHome(),
        );
      case TabItem.trending:
        return Center(
          child: Text("TRENDING"),
        );
      case TabItem.subscriptions:
        return Center(
          child: Text("SUBSCRIPTIONS"),
        );
      case TabItem.inbox:
        return Center(
          child: Text("INBOX"),
        );
      case TabItem.library:
        return Center(
          child: Text("LIBRARY"),
        );                                
    }
    return Container();
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: widget.bottomNavigationBarType,
      items: [
        _buildItem(icon: Icons.home, tabItem: TabItem.home),
        _buildItem(icon: Icons.whatshot, tabItem: TabItem.trending),
        _buildItem(icon: Icons.subscriptions, tabItem: TabItem.subscriptions),
        _buildItem(icon: Icons.mail, tabItem: TabItem.inbox),
        _buildItem(icon: Icons.folder, tabItem: TabItem.library),
      ],
      onTap: _onSelectTab,
    );
  }

  BottomNavigationBarItem _buildItem({IconData icon, TabItem tabItem}) {
    String text = tabItemName(tabItem);
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: _colorTabMatching(item: tabItem),
      ),
      title: Text(
        text,
        style: TextStyle(
          color: _colorTabMatching(item: tabItem),
        ),
      ),
    );
  }

  Color _colorTabMatching({TabItem item}) {
    return currentItem == item ? widget.tabSelectColor : Colors.grey;
  }
}
