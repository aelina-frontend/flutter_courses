import 'package:flutter/material.dart';
import 'package:untitled1/lessons/Instagram/stories_screen.dart';

import 'instagram_data.dart';

class InstagramScreen extends StatefulWidget {
  const InstagramScreen({super.key});

  @override
  State<InstagramScreen> createState() => _InstagramScreenState();
}

class _InstagramScreenState extends State<InstagramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              height: 500,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        if(data[index].isStories){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  StoriesScreen(instagramData: data[index]),
                            ),
                          );
                        }
                      },
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor:
                            data[index].isStories ? Colors.red : Colors.grey,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(data[index].avatarImage),
                          radius: 25,
                        ),
                      ),
                    ),
                    title: Text(data[index].nickName),
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_vert)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(data[index].image),
                    )),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            data[index].isLike = !data[index].isLike;
                          });
                        },
                        icon: data[index].isLike
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(Icons.favorite_border),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.comment),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.telegram_outlined),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            data[index].isBook = !data[index].isBook;
                          });
                        },
                        icon: data[index].isBook
                            ? Icon(
                                Icons.bookmark_add,
                                color: Colors.black,
                              )
                            : Icon(Icons.bookmark_add_outlined),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 7),
                    child: Text(
                      data[index].text,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(data[index].comment),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
