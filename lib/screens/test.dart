
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<String> clothes = ['Jeans','Dress','Jacket','Sweater','T-Shirt', 'Socks','Sweatshirt'];
  List<int> numbers = [3,5,6,8,9];
  List<double> sum = [2.4,1.5,6.2,7.5,9.6];
  List<bool>  check = [true,false,true,false,true];
  List<Widget> widgets = [
    Text('Jeans'),
    Text('Dress'),
    Text('Jacket'),
    Text('Sweater'),
    Text('T-Shirt'),
    Text('Socks'),
    Text('Sweatshirt'),
  ];
  TextEditingController clothesController = TextEditingController();

  void addClothes(){
    clothes.add(clothesController.text);
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: clothes.length,
        itemBuilder: (context, index){
          return Container (
            height: 80,
            color: Colors.orange,
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            child:Center(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Text('$index'),
                ),
                title: Text(
                  clothes[index],
                  style: TextStyle(color: Colors.white),
                ),
                
              ),
            )

          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                    title: Text('Add clothes'),
                    content: TextField(
                      controller: clothesController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  actions: [
                    TextButton(
                      onPressed: (){
                      Navigator.of(context).pop();
                    },
                        child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text('Add'),
                    ),
                  ],
                );
                }
          );
        },
        child: Icon(Icons.add),
      ),


    );
  }
}
