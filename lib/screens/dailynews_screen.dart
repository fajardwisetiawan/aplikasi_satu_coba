import 'package:flutter/material.dart';

class DailyNewsScreen extends StatefulWidget {
  @override
  _DailyNewsScreenState createState() => _DailyNewsScreenState();
}

class _DailyNewsScreenState extends State<DailyNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            title: Text(
              'Daily News',
              style: TextStyle(fontSize: 25.0, color: Colors.black),
            ),
              bottom: PreferredSize(
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text(
                          'Tab 1',
                          style: new TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Investment',
                          style: new TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Your Earning',
                          style: new TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Current Balance',
                          style: new TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Tab 5',
                          style: new TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Tab 6',
                          style: new TextStyle(color: Colors.black),
                        ),
                      )
                    ]),
                preferredSize: Size.fromHeight(40.0)
              ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: Center(
                  child: Text('Tab 1'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 2'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 3'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 4'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 5'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 6'),
                ),
              ),
            ],
          )),
    );
  }
}
