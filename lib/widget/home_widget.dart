import 'package:flutter/material.dart';
import 'package:aplikasi_satu/model/home.dart';

class HomeWidget extends StatelessWidget {
  final Home home;

  const HomeWidget({
    @required this.home,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(home.image, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, left: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 4),
                    Text(home.title,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text(home.date,
                        style: Theme.of(context).textTheme.caption),
                  ],
                ),
              ),
              // SizedBox(height: 4),
              // Text(home.title, style: TextStyle(fontWeight: FontWeight.bold)),
              // SizedBox(height: 4),
              // Text(home.date, style: Theme.of(context).textTheme.caption),
            ],
          ),
        ],
      );
}
