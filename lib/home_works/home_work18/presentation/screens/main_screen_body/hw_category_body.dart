import 'package:flutter/material.dart';
import 'package:untitled1/home_works/home_work18/core/hw_app_color.dart';
import 'package:untitled1/home_works/home_work18/presentation/screens/main_screen_body/category_data.dart';

class HwCategoryBody extends StatelessWidget {
  const HwCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Categories'),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryData.length,
            itemBuilder: (context, index) {
              return _circleAvatarWidget(
                  text: categoryData[index].productName,
                  image: categoryData[index].avatarPhoto,
              color: categoryData[index].color);
            },
          ),
        ),
      ],
    );
  }

  Widget _circleAvatarWidget({required String text, required String image, required Color color}) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: color,
            child: CircleAvatar(
              backgroundImage: AssetImage(image,),
              backgroundColor: color,
              radius: 12,
            ),
          ),
          SizedBox(height: 7,),
          Text(text, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}
