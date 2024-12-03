import 'package:flutter/material.dart';
import 'package:untitled1/home_works/home_work18/presentation/screens/main_screen_body/hw_banner_body.dart';
import 'package:untitled1/home_works/home_work18/presentation/screens/main_screen_body/hw_category_body.dart';
import 'package:untitled1/home_works/home_work18/presentation/screens/main_screen_body/hw_product_body.dart';
import 'package:untitled1/home_works/home_work18/presentation/screens/main_screen_body/hw_seach_body.dart';

class HwHomeScreen extends StatefulWidget {
  const HwHomeScreen({super.key});

  @override
  State<HwHomeScreen> createState() => _HwHomeScreenState();
}

class _HwHomeScreenState extends State<HwHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    HwSeachBody(),
                    HwBannerBody(),
                    HwCategoryBody(),
                  ],
                ),
              ),
              HwProductBody(),
            ],
          ),
        ),
      ),
    );
  }
}
