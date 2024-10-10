import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  double counter = 0;
  Widget icon = Icon(Icons.add);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          CircleAvatar(
            child: Image.asset(width: 30, 'assets/ellipse2.png'),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          // height: 20,
          notchMargin: 4.0,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.house,size: 30), onPressed: () {},),
              IconButton(icon: Icon(Icons.search,size: 30), onPressed: () {},),
              IconButton(icon: Icon(Icons.shopping_cart_outlined,size: 30), onPressed: () {},),
              IconButton(icon: Icon(Icons.perm_identity,size: 30), onPressed: () {},),
            ],)
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.grey[200],
              ),
              padding: const EdgeInsets.fromLTRB(10, 2, 2, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      size: 22,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      textInputAction: TextInputAction.search,
                      maxLines: 1,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                  ),
                  child: Image.asset('assets/salad.png')),
              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                  ),
                  child: Image.asset('assets/burger.png')),
              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                  ),
                  child: Image.asset('assets/pissa.png')),
              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                  ),
                  child: Image.asset('assets/cake.png')),
            ],
          ),
          SizedBox(height: 17),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Promotions',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
              ),
              Spacer(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Todays Offer',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      Text(
                        'Free box of Fries',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                      Text(
                        'on all orders above 150',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      )
                    ],
                  ),
                  Image.asset('assets/fries.png'),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Popular',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/burger2.png'),
                      Text(
                        'Beef Burger',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '\$$counter',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                color: Colors.orange),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                counter++;
                              });
                            },
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/pizza2.png'),
                      Text(
                        'Pissa Fries',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '\$$counter',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                color: Colors.orange),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                counter++;
                              });
                            },
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/burger2.png'),
                      Text(
                        'Chicken Burget',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '\$$counter',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                color: Colors.orange),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                counter++;
                              });
                            },
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
      // bottomNavitionBar()
    );
  }
}
