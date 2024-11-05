import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson9/data.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Map<String, dynamic>> filteredProducts = [];

  void searchProduct(String searchText) {
    List<Map<String, dynamic>> tempList = [];
    if (searchText.isNotEmpty) {
      tempList = products
          .where(
            (item) => item['name'].toString().toLowerCase().contains(
                  searchText.toLowerCase(),
                ),
          )
          .toList();
    } else {
      tempList = products;
    }
    ;
    setState(() {
      filteredProducts = tempList;
    });
  }

  void cancel() {
    Navigator.pop(context);
  }

  double? minPrice;
  double? maxPrice;

  void filterByPrice({required double min, required double max}) {
    minPrice = min;
    maxPrice = max;
    setState(() {
      filteredProducts = products
          .where((item) =>
              (minPrice == null || item['price'] >= minPrice!) &&
              (maxPrice == null || item['price'] <= maxPrice!))
          .toList();
    });
    cancel();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filteredProducts = products;
  }

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
                  onChanged: searchProduct,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Search'),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        double? tempMinPrice = minPrice;
                        double? tempMaxPrice = maxPrice;
                        return AlertDialog(
                          title: Text('Фильтрация'),
                          content: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  onChanged: (value) {
                                    tempMinPrice = double.parse(value);
                                  },
                                  decoration: InputDecoration(
                                      labelText: 'min',
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextField(
                                  onChanged: (value) {
                                    tempMaxPrice = double.parse(value);
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'max',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              )
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                cancel();
                              },
                              child: Text('отменить'),
                            ),
                            TextButton(
                              onPressed: () {
                                filterByPrice(
                                    min: tempMinPrice ?? 0,
                                    max: tempMaxPrice ?? double.infinity);
                              },
                              child: Text('применить'),
                            ),
                          ],
                        );
                      });
                },
                child: Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.tune),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          filteredProducts.isEmpty
              ? Align(
                  alignment: Alignment.center,
                  child: Text('данных нету'),
                )
              : Expanded(
                  child: GridView.builder(
                      itemCount: filteredProducts.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (contex, index) {
                        return Card(
                          elevation: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(filteredProducts[index]['discont']),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          filteredProducts[index]['isLike'] =
                                              !filteredProducts[index]
                                                  ['isLike'];
                                        });
                                      },
                                      icon: filteredProducts[index]['isLike']
                                          ? Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                            )
                                          : Icon(Icons.favorite_border),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: filteredProducts[index]['image'],
                                ),
                                Text('\$${filteredProducts[index]['price']}'),
                                Text(filteredProducts[index]['name']),
                                Text('${filteredProducts[index]['weight']}kg'),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
        ],
      ),
    );
  }
}
