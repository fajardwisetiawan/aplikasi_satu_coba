import 'package:flutter/material.dart';
import 'package:aplikasi_satu/model/showcase.dart';

class ShowcaseWidget extends StatelessWidget {
  final Showcase showcase;

  const ShowcaseWidget({
    @required this.showcase,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(showcase.image, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20.0,
                          child: Container(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, left: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 4),
                    Text(showcase.title,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text(showcase.owner,
                        style: Theme.of(context).textTheme.caption),
                  ],
                ),
              ),
              // SizedBox(height: 4),
              // Text(showcase.title,
              //     style: TextStyle(fontWeight: FontWeight.bold)),
              // SizedBox(height: 4),
              // Text(showcase.owner, style: Theme.of(context).textTheme.caption),
            ],
          ),
        ],
      );
}
