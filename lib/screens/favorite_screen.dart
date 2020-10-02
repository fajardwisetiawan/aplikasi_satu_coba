import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:aplikasi_satu/data/showcases.dart';
import 'package:aplikasi_satu/widget/showcase_widget.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget>[            
            StaggeredGridView.countBuilder(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(12),
              crossAxisCount: 4,
              mainAxisSpacing: 24,
              crossAxisSpacing: 12,
              itemCount: showcases.length,
              itemBuilder: (BuildContext context, int index) =>
                  ShowcaseWidget(showcase: showcases[index]),
              staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
            ),
          ],
        ),
    );
  }
}