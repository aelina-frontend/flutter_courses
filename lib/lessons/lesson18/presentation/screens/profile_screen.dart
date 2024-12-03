import 'package:flutter/material.dart';
import 'package:untitled1/lessons/lesson18/core/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.backgroundColor,
        child: Column(
          children: [
            profileImage(),
            Expanded(
                child: Column(
                  children: [
                    _iconText(icon: Icons.person_2_outlined, text: 'About me', onPressed: (){}),
                    _iconText(icon: Icons.account_balance_wallet_sharp, text: 'Me Orders', onPressed: (){}),
                    _iconText(icon: Icons.favorite_border, text: 'My favorites', onPressed: (){}),
                    _iconText(icon: Icons.location_on_outlined, text: 'My address', onPressed: (){}),
                    _iconText(icon: Icons.credit_card, text: 'Credit Cards', onPressed: (){}),
                    _iconText(icon: Icons.currency_exchange, text: 'Transactions', onPressed: (){}),
                    _iconText(icon: Icons.notifications_none, text: 'Notifications', onPressed: (){}),
                  ],
                ),),

          ],
        ),
      );
  }

  Widget _iconText({ required IconData icon, required String text,required dynamic Function() onPressed,}){
    return ListTile(
      leading: Icon(icon, color: AppColors.lightGreen,),
      title: Text(text),
      trailing: IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_forward_ios),),
    );
  }

  Widget profileImage(){
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 150,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150,
              color: AppColors.backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Olivia Austin', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                  Text('oliviaaustin@gmail.com', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.greyColor),),
                  SizedBox(height: 30,)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profileImage.png'),
              radius: 70,
            ),
          )
        ],
      ),
    );
  }
}
