import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:untitled1/lessons/lesson9/data.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController priceController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  final key = GlobalKey<FormState>();
  Widget? image;

  void addProduct() {
    //если все верно
    if (key.currentState!.validate()) {
      var newProduct = {
        'discont': 'NEW',
        'isLike': false,
        'image': image,
        'price': double.parse(priceController.text),
        'name': nameController.text,
        'weight': double.parse(weightController.text),
      };
      products.add(newProduct);
      setState(() {});
    }
  }

  Future<void> _pickImage() async {
    final imageFromGallery = await ImagePickerWeb.getImageAsWidget();
    if(imageFromGallery != null){
      setState(() {
       image = imageFromGallery;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        key: key,
        child: Column(
          children: [
            image != null ? image! : InkWell(
              onTap: (){
                _pickImage();
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('add image'),
                    Icon(Icons.camera_alt),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            textFormFielsWidget(
                labelText: 'price', controller: priceController),
            textFormFielsWidget(labelText: 'name', controller: nameController),
            textFormFielsWidget(
                labelText: 'weight', controller: weightController),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  addProduct();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                child: Text(
                  'add product',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textFormFielsWidget(
      {required String labelText, required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$labelText can not be empty';
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
        ),
      ),
    );
  }
}
