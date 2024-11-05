import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker_web/image_picker_web.dart';

class AddBurgerScreen extends StatefulWidget {
  const AddBurgerScreen({super.key});

  @override
  State<AddBurgerScreen> createState() => _AddBurgerScreenState();
}

class _AddBurgerScreenState extends State<AddBurgerScreen> {
  TextEditingController priceController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController rateController = TextEditingController();

  final key = GlobalKey<FormState>();

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        key: key,
        child: Column(
          children: [
            image != null
                ? image!
                : InkWell(
                    onTap: () {
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
                          Text('add burger image'),
                          Icon(Icons.camera_alt),
                        ],
                      ),
                    ),
                  ),
            SizedBox(
              height: 15,
            ),
            textFormFieldWidget(labelText: 'name', controller: nameController),
            textFormFieldWidget(labelText: 'rate', controller: rateController),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
                child: Text(
                  'add burger',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textFormFieldWidget(
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
