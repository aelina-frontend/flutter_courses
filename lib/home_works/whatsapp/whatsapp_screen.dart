import 'package:flutter/material.dart';
import 'package:untitled1/home_works/whatsapp/message_screen.dart';
import 'package:untitled1/home_works/whatsapp/whatsapp_data.dart';

class WhatsappScreen extends StatefulWidget {
  const WhatsappScreen({super.key});

  @override
  State<WhatsappScreen> createState() => _WhatsappScreenState();
}

class _WhatsappScreenState extends State<WhatsappScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: data.length,
          itemBuilder: (context, index){
        return Container(
          height: 130,
          width: double.infinity,
          child: Column(
            children: [
              ListTile(
                leading: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen(whatsappData: data[index])));
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(data[index].avatarImage),
                    radius: 40,
                  ),
                ),
                title: Text(data[index].nickName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                subtitle: Text(data[index].lastMessage),
                trailing:Text(data[index].lastVisit.toString()),
                // trailing: ListTile(
                //     title:Text(data[index].lastVisit.toString()),
                //
                //
                // ),

              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                //   ],
                // ),
              )
            ],
          ),
        );
      }),
    );
  }
}
