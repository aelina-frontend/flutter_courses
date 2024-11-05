import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

import 'burger_data.dart';

class AdminBurgerScreen extends StatefulWidget {
  const AdminBurgerScreen({super.key});

  @override
  State<AdminBurgerScreen> createState() => _AdminBurgerScreenState();
}

class _AdminBurgerScreenState extends State<AdminBurgerScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController rateController = TextEditingController();

  void deleteProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
    Navigator.pop(context);
  }

  void updateProduct(int index) {
    setState(() {
      products[index] = {
        'image': image ?? products[index]['image'],
        'name': nameController.text,
        'rate': double.parse(rateController.text),
        'isLike': false,
      };
    });
    Navigator.pop(context);
  }

  Widget? image;

  Future<void> _pickImage() async {
    final imageFromGallery = await ImagePickerWeb.getImageAsWidget();
    if (imageFromGallery != null) {
      setState(() {
        image = imageFromGallery;
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
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Image.asset(
                    products[index]['image'],
                    height: 100,
                    width: 100,
                  ),
                  Text(
                    products[index]['name'],
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      Text('${products[index]['rate']}'),
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
                              : Icon(Icons.favorite_border)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Do you really want delete?'),
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
                        icon: Icon(Icons.delete),
                      ),
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  nameController.text = products[index]['name'];
                                  rateController.text =
                                      products[index]['rate'].toString();

                                  return StatefulBuilder(
                                      builder: (context, setState) {
                                        return AlertDialog(
                                          title: Text('你想修改吗？'),
                                          content: SizedBox(
                                            height: 250,
                                            child: Column(
                                              children: [
                                                image != null ? SizedBox(
                                                    height: 100,
                                                    width: 100,
                                                    child: image!) :
                                                InkWell(
                                                  onTap: () {
                                                    _pickImage();
                                                  },
                                                  child: Container(
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2,
                                                        )
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment
                                                          .center,
                                                      children: [
                                                        Text('加图片'),
                                                        Icon(Icons.camera_alt),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                _textFieldWidget(labeltext: 'name', controller: nameController),
                                                _textFieldWidget(labeltext: 'rate', controller: rateController),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            _textButtonWidget(
                                                text: 'no', onPressed: () {}),
                                            _textButtonWidget(
                                                text: 'yes',
                                                onPressed: () {
                                                  updateProduct(index);
                                                }),
                                          ],
                                        );
                                      }
                                  );
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

  Widget _textButtonWidget(
      {required String text, required Function() onPressed}) {
    return TextButton(onPressed: () {}, child: Text(text));
  }

  Widget _textFieldWidget(
      {required String labeltext, required TextEditingController controller}) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5), child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labeltext,
      ),
    ),
    );
  }
}
