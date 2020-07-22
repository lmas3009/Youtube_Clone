import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/Screens/explore.dart';
import 'package:youtube_clone/Screens/home.dart';
import 'package:youtube_clone/Screens/libary.dart';
import 'package:youtube_clone/Screens/mail.dart';
import 'package:youtube_clone/Screens/subscriptions.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
final _pageopt=[
    Homepage(),
    Explore(),
    Subcription(),
    Mail(),
    Libary()
    //Edit(),
    //Setting(),
  ];
  
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
class _MyHomePageState extends State<MyHomePage> {
  /*int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
*/
  
  @override
  Widget build(BuildContext context) {
        return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.home, size: 30,color: Colors.white),
            Icon(Icons.explore, size: 30,color: Colors.white),
            Icon(Icons.subscriptions, size: 30,color: Colors.white),
            Icon(Icons.mail, size: 30,color: Colors.white),
            Icon(Icons.library_add, size: 30,color: Colors.white),
          ],
          color: Colors.blue,
          buttonBackgroundColor: Colors.red,
          backgroundColor: Colors.white,
          animationCurve: Curves.ease, 
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: _pageopt[_page],
        );
  }
}