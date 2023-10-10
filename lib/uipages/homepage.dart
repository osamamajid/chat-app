import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../StoryPage.dart';
import '../pages/camera.dart';
import '../pages/chatpage.dart';
import '../pages/countactcall.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  final items = const [
    Icon(Icons.chat, size: 30, color: Colors.white,),
    Icon(Icons.camera_alt, size: 50,color: Colors.white,),
    Icon(Icons.call, size: 30,color: Colors.white,),

  ];

  int index = 0;

  void _openStory() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const StoryPage(),
      ),
    );
  }

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  void _onTabTapped(int selectedIndex) {
    setState(() {
      index = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('S T O R I E S'),
        actions: const [Row(
          children: [

          ],
        )],
      ),

      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: index,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.chat, size: 30, color: Colors.white),
          Icon(Icons.camera_alt, size: 30, color: Colors.white),
          Icon(Icons.call, size: 30, color: Colors.white),
        ],
        color: Colors.lightBlue,
        buttonBackgroundColor: Colors.lightBlue,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: _onTabTapped,
      ),
      body: getSelectedWidget(index: index),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = ChatScreen();
        break;
      case 1:
        widget = const CameraExampleHome();
        break;
      case 2:
        widget = const Callrom();
        break;
      default:
        widget = const CameraExampleHome();
        break;
    }
    return widget;
  }
}
