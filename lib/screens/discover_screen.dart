import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/screens/welcome_screen.dart';
import '../core/app_assets.dart';


class  DiscoverScreen extends StatelessWidget {
  final List<String> imageUrls = [
    'https://img.championat.com/news/big/v/r/na-kraju-zemli-10-neobychnyh-idej-dlja-puteshestvija_1517331980822771222.jpg',
    'https://assets.gq.ru/photos/5d9f4f2d4c4d5f0009b28267/16:9/w_2560%2Cc_limit/16.jpg',
    'https://rubic.us/wp-content/uploads/2018/02/iw-US-Roatrip-e1518285949838-1024x642.jpg',
    'https://online-dubai.ru/_ld/0/04319432.jpg',
    'https://www.sostav.ru/images/news/2019/10/22/zelzv73i_md.jpg',
    'https://www.onetwotrip.com/ru/blog/static/images/travel-now/time-to-travel.jpg',
    'https://pohcdn.com/guide/sites/default/files/styles/paragraph__text_with_image___twi_image/public/2023-01/solo-travel-1.jpg',
    'https://34travel.me/media/posts/5589ef3c1e01f-top.jpg',
    'https://res.cloudinary.com/okay-rent-a-car/images/v1674689611/content/travel-with-friends/Travelling%20with%20friends,is%20the%20best%20way%20to%20travel.png',
    'https://n1s1.hsmedia.ru/cb/a7/e4/cba7e49be6e3e897888567260a70316f/690x380_0x0a330c2a_14597236841561449908.jpeg',
    'https://static.sobaka.ru/images/image/00/84/36/83/_normal.jpg?v=1493714481',
    'https://klike.net/uploads/posts/2023-02/1675238837_3-90.jpg',
  ];
   // DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Discover',
            style: TextStyle(fontSize: 36, fontFamily: 'Comfortaa', fontWeight: FontWeight.w400),
      ),),
      body: SafeArea(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children:
            [
              Text(
                textAlign: TextAlign.left,
                'WHATS NEW TODAY',
                style: TextStyle(fontSize: 16, fontFamily: 'Roboto', fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                          Container(
                            width: 300,
                            height: 300,
                            // color: Colors.red,
                            child: Image.asset(
                              AppAssets.pic1,
                              height: 200,
                              width: 300,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Image.asset(AppAssets.component1,height: 40,width: 100,)
                      SizedBox(width: 10,),
                      Container(
                        width: 200,
                        height: 300,
                        // color: Colors.green,
                        child: Image.asset(
                          AppAssets.pic4,
                          fit: BoxFit.cover,
                          // height: 100,
                          // width: 250,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 200,
                        height: 300,
                        // color: Colors.orange,
                        child: Image.asset(
                          AppAssets.pic2,
                          fit: BoxFit.cover,
                          // height: 100,
                          // width: 250,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 200,
                        height: 300,
                        // color: Colors.blueAccent,
                        child: Image.asset(
                          AppAssets.pic3,
                          fit: BoxFit.cover,
                          // height: 100,
                          // width: 250,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.left,
                'BROWSE ALL',
                style: TextStyle(fontSize: 16, fontFamily: 'Roboto', fontWeight: FontWeight.bold),),
              Expanded(
                flex: 4,
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverGrid(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 400.0,
                        mainAxisSpacing: 2.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 1.3,
                      ),
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          return Image.network(imageUrls[index]);
                        },
                        childCount: imageUrls.length,
                      ),
                    )
                   ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: const Center(child: Text(
                          'SEE MORE',
                          style: TextStyle(
                              fontSize: 13, color: Colors.black,
                          fontFamily: 'Roboto'),
                          textAlign: TextAlign.center,
                        )
                        )
                    ),
                  ),
              ),
              Container(
                height: 80,

                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Icon(
                      Icons.house_outlined,
                      size: 22.0,
                      semanticLabel: 'Текст для показа в режиме доступности',
                    ),
                    Icon(
                      Icons.search,
                      size: 22.0,
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: const Text('+'),
                    ),
                    Icon(
                      Icons.mode_comment_outlined,
                      size: 22.0,
                    ),
                    Icon(
                      Icons.perm_identity,
                      size: 22.0,
                    ),
                  ],
                ),
              ),

            ]
        ),
      ),
    );
  }
}
