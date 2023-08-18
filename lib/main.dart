import 'package:flutter/material.dart';
import 'package:flutter_application_1/tabs/groups.dart';
import 'package:flutter_application_1/tabs/home.dart';
import 'package:flutter_application_1/tabs/menu.dart';
import 'package:flutter_application_1/tabs/notifications.dart';
import 'package:flutter_application_1/tabs/videos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook  clone',
      debugShowCheckedModeBanner: false,
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
                fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                color: Colors.black,
              ),
            ),
          ],
          //tab bar
          bottom: TabBar(
             unselectedLabelColor: Colors.black54,
             indicatorColor: Colors.blue,
             labelColor: Colors.blue,
            tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.group),
            ),
            Tab(
              icon: Icon(Icons.ondemand_video),
            ),
            Tab(
              icon: Icon(Icons.notifications_none),
            ),
            Tab(
              icon: Icon(Icons.menu),
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeScreen(),
            GroupScreen(),
            VideosScreen(),
            NotificationScreen(),
            MenuScreen(),
          ],
        ),
      ),
    );
  }
}
