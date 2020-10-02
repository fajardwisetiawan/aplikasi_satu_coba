import 'package:flutter/material.dart';

import 'package:aplikasi_satu/homepage/world_page.dart' as world;
import 'package:aplikasi_satu/homepage/politics_page.dart' as politic;
import 'package:aplikasi_satu/homepage/tech_page.dart' as tech;
import 'package:aplikasi_satu/homepage/sports_page.dart' as sport;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
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
      appBar: PreferredSize(
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          tabs: <Widget>[
            new Tab(
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints.expand(width: 100),
                color: Colors.red,
                child: Text("World"),
              ),
            ),
            new Tab(
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints.expand(width: 100),
                color: Colors.blue,
                child: Text("Politics"),
              ),
            ),
            new Tab(
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints.expand(width: 100),
                color: Colors.green,
                child: Text("Tech"),
              ),
            ),
            new Tab(
              child: Container(
                alignment: Alignment.center,
                constraints: BoxConstraints.expand(width: 100),
                color: Colors.yellow[700],
                child: Text("Sports"),
              ),
            ),
          ],
        ),
        preferredSize: Size.fromHeight(30.0)
      ),
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
