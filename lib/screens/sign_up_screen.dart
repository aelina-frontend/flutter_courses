import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/app_assets.dart';
import 'sign_in_screen.dart';


class MyGridView extends StatelessWidget
{
  final List<String> imageUrls = [
    'https://s0.rbk.ru/v6_top_pics/resized/800xH/media/img/1/85/347020356204851.webp',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBCNo8Jat2l6hOhG3hpq8-rfAYaeH1wyOdQg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpJsG1za1V5FJUrh6-KkTgzuQd6pibmEzMRg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQln4ncK1wmokCts_EtA1FdTLWUO2JMqfRjiA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4FY7vzviHsnu4MHYfoi5ylGyt6eHRuETIaw&s',
    'https://s0.rbk.ru/v6_top_pics/resized/800xH/media/img/1/85/347020356204851.webp',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBCNo8Jat2l6hOhG3hpq8-rfAYaeH1wyOdQg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpJsG1za1V5FJUrh6-KkTgzuQd6pibmEzMRg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQln4ncK1wmokCts_EtA1FdTLWUO2JMqfRjiA&s',
    'https://s0.rbk.ru/v6_top_pics/resized/800xH/media/img/1/85/347020356204851.webp',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4FY7vzviHsnu4MHYfoi5ylGyt6eHRuETIaw&s',
  ];

  @override
  Widget build(BuildContext context)
  {
    return CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
           icon: Icon(Icons.menu),
            onPressed: () {
              print('menu');
            },
            ),
            pinned: true,
            expandedHeight: 80.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('August 28, 2024'),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              alignment: Alignment.center,

              height: 150,
              width: 150,
              child: Text('Keep it up!! Complete your tasks. You almost their!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,  fontSize: 20),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent,

              ),
            ),
          ),
          // SliverGrid(
          //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //     maxCrossAxisExtent: 300.0,
          //     mainAxisSpacing: 10.0,
          //     crossAxisSpacing: 10.0,
          //     childAspectRatio: 1.0,
          //   ),
          //   delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //       return Image.network(imageUrls[index]);
          //     },
          //     childCount: imageUrls.length,
          //   ),
          // ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 2,
            ),
          ),
        ]
    );
  }
}