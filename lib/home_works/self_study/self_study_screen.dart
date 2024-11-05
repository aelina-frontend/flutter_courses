
import 'package:flutter/material.dart';
import 'package:untitled1/home_works/self_study/widgets/app_bar_widget.dart';

class SelfStudyScreen extends StatefulWidget {
  const SelfStudyScreen({super.key});

  @override
  State<SelfStudyScreen> createState() => _SelfStudyScreenState();
}

class _SelfStudyScreenState extends State<SelfStudyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  appBarWidget(

      ),
      drawer: Drawer(),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
