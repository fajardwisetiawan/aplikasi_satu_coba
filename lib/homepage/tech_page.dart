import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:aplikasi_satu/data/homes.dart';
import 'package:aplikasi_satu/widget/home_widget.dart';

class TechPage extends StatefulWidget {
  @override
  _TechPageState createState() => _TechPageState();
}

class _TechPageState extends State<TechPage> {
  List<Story> _stories;

  @override
  void initState() {
    super.initState();
    _populateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(right: 12.0, left: 12.0),
            color: Colors.transparent,
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _stories.length,
              itemExtent: 250.0,
              itemBuilder: (context, index) {
                var item = _stories[index];
                return Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: NetworkImage(
                                item.storyUrl,
                              ),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black26,
                                BlendMode.darken,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0, left: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 4),
                            Text(item.name,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text(item.subname,
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(12),
            crossAxisCount: 4,
            mainAxisSpacing: 24,
            crossAxisSpacing: 12,
            itemCount: homes.length,
            itemBuilder: (BuildContext context, int index) =>
                HomeWidget(home: homes[index]),
            staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
          ),
        ],
      ),
    );
  }

  void _populateData() {
    _stories = <Story>[
      Story(
          name: 'Hello, I am good',
          subname: 'I can do it',
          storyUrl:
              'https://images.unsplash.com/photo-1519501025264-65ba15a82390?ixlib=rb-1.2.1&w=1000&q=80'),
      Story(
          name: 'Waleed',
          subname: 'I can do it',
          storyUrl:
              'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg'),
      Story(
          name: 'Flutter',
          subname: 'I can do it',
          storyUrl:
              'http://paranoidandroid.co/assets/wallpapers/2018/submerged_desktop_thumb.jpg'),
      Story(
          name: 'Flutter',
          subname: 'I can do it',
          storyUrl:
              'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
      Story(
          name: 'Flutter',
          subname: 'I can do it',
          storyUrl:
              'https://i.pinimg.com/originals/90/ff/c3/90ffc3cc0cfe33f1940d548a6c7602d1.jpg'),
      Story(
          name: 'Flutter',
          subname: 'I can do it',
          storyUrl:
              'https://images.pexels.com/photos/775201/pexels-photo-775201.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    ];
  }
}

class Story {
  final String name;
  final String subname;
  final String storyUrl;

  Story({this.name, this.storyUrl, this.subname});
}
