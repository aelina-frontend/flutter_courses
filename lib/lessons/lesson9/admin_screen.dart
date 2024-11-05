import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

import 'data.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  TextEditingController discontController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  void deleteProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
    Navigator.pop(context);
  }

  void update(int index) {
    setState(() {
      products[index] = {
        'discont': discontController.text,
        'isLike': false,
        'image': image ?? products[index]['image'],
        'price': double.parse(priceController.text),
        'name': nameController.text,
        'weight': double.parse(weightController.text),
      };
    });
    Navigator.pop(context);
  }

  Widget? image;

  Future<void> _pickImage()async{
    final imageFromGallerry = await ImagePickerWeb.getImageAsWidget();
    if(imageFromGallerry != null){
      setState(() {
        image = imageFromGallerry;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products.length,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(products[index]['discont']),
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
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: products[index]['image'],
                  ),
                  Text('\$${products[index]['price']}'),
                  Text(products[index]['name']),
                  Text('${products[index]['weight']}kg'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: contex,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Вы хотите удалить товар?'),
                                    actions: [
                                      _textButtonWidget(
                                          text: 'no', onPressed: () {}),
                                      _textButtonWidget(
                                          text: 'yes',
                                          onPressed: () {
                                            deleteProduct(index);
                                          }),
                                    ],
                                  );
                                });
                          },
                          icon: Icon(Icons.delete)),
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: contex,
                                builder: (contex) {
                                  discontController.text = products[index]['discont'];
                                  nameController.text = products[index]['name'];
                                  priceController.text = products[index]['price'].toString();
                                  weightController.text = products[index]['weight'].toString();
                                  return StatefulBuilder(builder: (context, setState){
                                    return AlertDialog(
                                      title: Text('Обновить товар'),
                                      content: SizedBox(
                                        height: 400,
                                        child: Column(
                                          children: [
                                            image != null ? SizedBox(height:100, width: 100,child: image!) :
                                            InkWell(

                                              onTap: (){
                                                _pickImage();
                                              },
                                              child: Container(
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black,
                                                      width: 2),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Text('add image'),
                                                    Icon(Icons.camera_alt),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            _textFieldWidget(
                                                controller: discontController,
                                                labelText: 'discont'),
                                            _textFieldWidget(
                                                controller: nameController,
                                                labelText: 'name'),
                                            _textFieldWidget(
                                                controller: priceController,
                                                labelText: 'price'),
                                            _textFieldWidget(
                                                controller: weightController,
                                                labelText: 'weight'),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        _textButtonWidget(
                                            text: 'cancel', onPressed: () {}),
                                        _textButtonWidget(
                                            text: 'update',
                                            onPressed: () {
                                              update(index);
                                            }),
                                      ],
                                    );
                                  });
                                });
                          },
                          icon: Icon(Icons.edit)),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget _textFieldWidget(
      {required String labelText, required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
        ),
      ),
    );
  }

  Widget _textButtonWidget(
      {required String text, required Function() onPressed}) {
    return TextButton(onPressed: onPressed, child: Text(text));
  }
}
