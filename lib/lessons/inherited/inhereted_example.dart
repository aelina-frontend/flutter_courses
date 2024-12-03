import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String description;

  Product({required this.name, required this.price, required this.description});
}

class Book extends Product {
  final String author;

  Book(
      {required super.name,
      required super.price,
      required this.author,
      required super.description});
}

class Clothes extends Product {
  final double size;

  Clothes(
      {required super.name,
      required super.price,
      required this.size,
      required super.description});
}

List<Book> books = [
  Book(
      name: 'vino iz oduvanchikov',
      price: 320,
      author: 'Ray Bredbery',
      description: 'delayut vino'),
  Book(
      name: '360 gradusov po faringeitu',
      price: 200,
      author: 'Ray Bredbery',
      description: 'pro knigi i zapret na nih')
];

List<Clothes> clothes = [
  Clothes(
      name: 'jacket', price: 37.0, size: 44, description: 'black, long jacket'),
  Clothes(
      name: 'jeans',
      price: 55.6,
      size: 36,
      description: 'super blue model of jeans'),
];

class TabbarExample extends StatefulWidget {
  const TabbarExample({super.key});

  @override
  State<TabbarExample> createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.book),
                text: 'books',
              ),
              Tab(
                icon: Icon(Icons.access_alarm_sharp),
                text: 'clothes',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          BookScreen(),
          ClothesScreen(),
        ]),
      ),
    );
  }
}

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetail(book: books[index]),
                  ),
                );
              },
              title: Text(books[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              subtitle: Text(books[index].author),
              trailing: Text('${books[index].price}'),
            );
          }),
    );
  }
}

class BookDetail extends StatelessWidget {
  final Book book;

  const BookDetail({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(book.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              Text(book.author),
              Text(book.description),
            ],
          ),
        ),
      ),
    );
  }
}

class ClothesScreen extends StatelessWidget {
  const ClothesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: clothes.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Card(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ClothesDetail(clothes: clothes[index])),
              );
            },
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(clothes[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                  Text('\$${clothes[index].price}',style: TextStyle(fontWeight: FontWeight.w400, color: Colors.orange)),
                  Text('${clothes[index].size}'),
                  Text(clothes[index].description)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ClothesDetail extends StatelessWidget {
  final Clothes clothes;

  const ClothesDetail({super.key, required this.clothes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(clothes.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              Text('\$${clothes.price}',style: TextStyle(fontWeight: FontWeight.w400, color: Colors.orange)),
              Text('${clothes.size}'),
              Text(clothes.description)
            ],
          ),
        ),
      ),
    );
  }
}
