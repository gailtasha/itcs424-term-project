import 'package:acr_cloud_sdk_example/views/fav_song.dart';
import 'package:flutter/material.dart';
import 'package:acr_cloud_sdk_example/views/search_song.dart';

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
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        body: TabBarView(
          children: [FavSongPage()],
        ),
        backgroundColor: Color(0xffff005d),
        bottomNavigationBar: TabBar(
          tabs: [Tab(icon: Icon(Icons.favorite))],
          indicatorColor: Colors.transparent,
        ),
      ),
    );
  }
}
