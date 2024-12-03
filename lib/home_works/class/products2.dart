import 'package:flutter/material.dart';

class MarketProducts {
  final String name;
  final double price;
  final String image;
  final bool inStock;
  final String description;
  final List<String>? composition; //состав товара
  final Map<String, dynamic> countWeight;

  MarketProducts(
      {required this.name,
      required this.price,
      required this.image,
      this.inStock = false,
      required this.description,
      this.composition,
      required this.countWeight});
}

List<MarketProducts> marketProducts = [
  MarketProducts(
      name: 'Кардицепс',
      price: 4500,
      image: 'assets/pick1.jpg',
      description: 'Кордицепс для восстановления иммунитета и профилактики хронических заболеваний.',
      countWeight: {'количество флаконов': 10, 'вес в гр': 20},
      ),
  MarketProducts(
    name: 'Пластырь для суставов',
    price: 4500,
    image: 'assets/pick2.jpg',
    description: 'Пластырь для восстановления функции позвоночника и суставов.',
    countWeight: {'количество флаконов': 10, 'вес в гр': 20},
  ),
  MarketProducts(
    name: 'Шенлунгская зубная паста',
    price: 4500,
    image: 'assets/pick3.jpg',
    description: 'Зубная паста для здоровья ротовой полости.',
    countWeight: {'количество флаконов': 10, 'вес в гр': 20},
  ),
  MarketProducts(
    name: 'Шенлунгский чай',
    price: 4500,
    image: 'assets/pick4.jpg',
    description: 'Общеукрепляющий чай из черной горькой гречихи и красного ферментированного риса.',
    countWeight: {'количество пакетиков': 50, 'вес в гр': 400},
  ),
  MarketProducts(
    name: 'Шенлунгский рыбий жир',
    price: 4500,
    image: 'assets/pick5.jpg',
    description: 'Рыбий жир в капсулах для улучшения работы сердца, мозга, очистки сосудов.',
    countWeight: {'количество капсул': 120, 'вес в гр': 0.5},
  ),

];

class Products2 extends StatelessWidget {
  const Products2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: marketProducts.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetale(
                                marketProducts: marketProducts[index],
                              )));
                },
                title: Text(marketProducts[index].name),
                leading: Image.asset(
                  marketProducts[index].image,
                  height: 120,
                  width: 120,
                ),

              );
            }));
  }
}

class ProductDetale extends StatefulWidget {
  final MarketProducts marketProducts;

  const ProductDetale({super.key, required this.marketProducts});

  @override
  State<ProductDetale> createState() => _ProductDetaleState();
}

class _ProductDetaleState extends State<ProductDetale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Image.asset(
            widget.marketProducts.image,
            height: 300,
            width: 300,
          ),
          // CircleAvatar(
          //   radius: 70,
          //   backgroundImage: AssetImage(widget.marketProducts.image, ),
          // ),
          SizedBox(height: 20,),
          Text(widget.marketProducts.name, style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, fontFamily: 'Roboto'),),
          SizedBox(height: 10,),
          Text('${widget.marketProducts.price}', style: TextStyle(fontSize:20, fontWeight: FontWeight.w500, color: Colors.orange, fontFamily: 'Roboto'),),
          SizedBox(height: 10,),
          Text('${widget.marketProducts.countWeight['количество флаконов']}', style: TextStyle(fontFamily: 'Roboto'),),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(widget.marketProducts.description, style: TextStyle(fontSize:18, fontWeight: FontWeight.w500, fontFamily: 'Roboto' ),),
          ),

        ]),
      ),
    );
  }
}
