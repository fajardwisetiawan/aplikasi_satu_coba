import 'package:aplikasi_satu/list/chewie_list_item.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(LiveNewsScreen());

class LiveNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                ChewieListItem(
                  videoPlayerController: VideoPlayerController.asset(
                    'videos/videoplayback1.mp4',
                  ),
                  looping: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, bottom: 2.0, left: 8.0, right: 8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Chelsea Islan",
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.share,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 2.0, bottom: 15.0, left: 8.0, right: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "7th August 2019",
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ],
                  ),
                ),
                ChewieListItem(
                  videoPlayerController: VideoPlayerController.asset(
                    'videos/videoplayback1.mp4',
                  ),
                  looping: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, bottom: 2.0, left: 8.0, right: 8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Pevita Pearce",
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.share,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 2.0, bottom: 15.0, left: 8.0, right: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "9th December 2019",
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ],
                  ),
                ),
                ChewieListItem(
                  videoPlayerController: VideoPlayerController.asset(
                    'videos/videoplayback1.mp4',
                  ),
                  looping: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, bottom: 2.0, left: 8.0, right: 8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Luna Maya",
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.share,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 2.0, bottom: 15.0, left: 8.0, right: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "1st January 2020",
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // ChewieListItem(
          //   videoPlayerController: VideoPlayerController.asset(
          //     'videos/videoplayback1.mp4',
          //   ),
          //   looping: true,
          // ),
          // ChewieListItem(
          //   videoPlayerController: VideoPlayerController.asset(
          //     'videos/videoplayback2.mp4',
          //   ),
          // ),
          // ChewieListItem(
          //   videoPlayerController: VideoPlayerController.network(
          //     'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
          //   ),
          // ),
        ],
      ),
    );
  }
}
