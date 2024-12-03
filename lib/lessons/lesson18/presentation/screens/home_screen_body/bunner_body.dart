import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';

class BannerBody extends StatelessWidget {
  const BannerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 283,
      width: double.infinity,
      child: PageView.builder(
        itemCount: 4,
        itemBuilder: (context, pageIndex) {
          return Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/mask.png'),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _textWidget(),
                SizedBox(
                  height: 45,
                ),
                _sliderWidget(pageIndex: pageIndex),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _textWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 60),
      child: Text(
        '20% off on your\n first purchase',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _sliderWidget({required int pageIndex}) {
    return SizedBox(
      height: 10,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return index == pageIndex
                ? Container(
                    height: 10,
                    width: 25,
                    decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )
                : CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.whiteColor,
                  );
          }),
    );
  }
}
