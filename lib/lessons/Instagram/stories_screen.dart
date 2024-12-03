import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/lessons/Instagram/instagram_data.dart';
import 'package:untitled1/lessons/Instagram/instagram_screen.dart';

class StoriesScreen extends StatefulWidget {
  final InstagramData instagramData;

  const StoriesScreen({super.key, required this.instagramData});

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  double progress = 0.0;
  late Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startProgress();
  }

  void startProgress() {
    timer = Timer.periodic(Duration(milliseconds: 100), (_timer) {

      if (progress >= 1.0) {
        timer.cancel();
        Navigator.pop(context);
      }else{
        setState(() {
          progress += 0.05;
        });
      }
    });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 15),
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(widget.instagramData.storiesImage),
        )),
        child: Column(
          children: [
            LinearProgressIndicator(
              backgroundColor: Colors.grey,
              value: progress,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.instagramData.avatarImage),
                  radius: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(widget.instagramData.nickName),
                SizedBox(
                  width: 7,
                ),
                Text('14 ч.'),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.pause,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: _border(),
                      enabledBorder: _border(),
                      focusedBorder: _border(),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  InputBorder _border() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: Colors.white,
          width: 2,
        ));
  }
}
