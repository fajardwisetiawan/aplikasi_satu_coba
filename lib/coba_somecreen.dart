import 'package:flutter/material.dart';

import 'package:aplikasi_satu/homepage/world_page.dart' as world;
import 'package:aplikasi_satu/homepage/politics_page.dart' as politic;
import 'package:aplikasi_satu/homepage/tech_page.dart' as tech;
import 'package:aplikasi_satu/homepage/sports_page.dart' as sport;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin{

TabController controller;

@override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      appBar: TabBar(
          controller: controller,
          indicatorColor: Colors.purple,
          labelColor: Colors.indigoAccent[400],
          unselectedLabelColor: Colors.purple,
          tabs: <Widget>[
            new Tab(text: "World",),
            new Tab(text: "Politics",),
            new Tab(text: "Tech",),
            new Tab(text: "Sports",),
          ],
      ),
      // appBar: new PreferredSize(
      //   preferredSize: Size.fromHeight(kToolbarHeight),
      //   child: new Container(
      //     color: Colors.green,
      //     child: new SafeArea(
      //       child: Column(
      //         children: <Widget>[
      //           new TabBar(
      //             tabs: [new Text("Lunches"), new Text("Cart"), new Text("Lunches"), new Text("Cart")],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),

      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new world.WorldPage(),
          new politic.PoliticsPage(),
          new tech.TechPage(),
          new sport.SportsPage()
        ],
      ),
    );
  }
}