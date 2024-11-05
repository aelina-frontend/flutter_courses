import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'burger_data.dart';

class BurgerProductScreen extends StatefulWidget {
  const BurgerProductScreen({super.key});

  @override
  State<BurgerProductScreen> createState() => _BurgerProductScreenState();
}

class _BurgerProductScreenState extends State<BurgerProductScreen> {

  List<String> categories = ['All', 'Combos', 'Sliders', 'Class'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: (value) {
                    // search(value);
                  },
                  cursorRadius: Radius.circular(5.0),
                  autofocus: true,
                  enableSuggestions: false,
                  autocorrect: true,
                  enableInteractiveSelection: true,
                  selectionControls: materialTextSelectionControls,
                  decoration: InputDecoration(
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.blue),
                    // ),
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),

                    // counterText: '0/10 символов',
                  ),
                ),
              ),
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.tune,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return _elevatedButtonWidget(
                      onPressed: () {}, text: categories[index]);
                }),
          ),
          SizedBox(
            height: 20,
          ),
          _gridViwBuilderWidget(),
        ],
      ),
    );
  }

  Widget _elevatedButtonWidget(
      {required Function() onPressed, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }

  Widget _gridViwBuilderWidget() {
    return Expanded(
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return Card(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  Image.asset(
                    products[index]['image'],
                    height: 120,
                    width: 120,
                  ),
                  Text(
                    products[index]['name'],
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star, color: Colors.orangeAccent),
                      Text(
                        products[index]['rate'],
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            products[index]['isLike'] =
                            !products[index]['isLike'];
                          });
                        },
                        icon: products[index]['isLike']
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                            : Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                ]),
              ));
        },
      ),
    );
  }
}
