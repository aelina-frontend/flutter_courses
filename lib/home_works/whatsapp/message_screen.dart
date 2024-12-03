import 'package:flutter/material.dart';
import 'package:untitled1/home_works/whatsapp/whatsapp_data.dart';

class MessageScreen extends StatefulWidget {
  final WhatsappData whatsappData;
  const MessageScreen({super.key, required this.whatsappData});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[300],
        toolbarHeight: 70,
          flexibleSpace: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios, color: Colors.white,),),
          leading: CircleAvatar(
                backgroundImage: AssetImage(widget.whatsappData.avatarImage),
                radius: 15,
              ),
          title: Text(widget.whatsappData.nickName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white,),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam_outlined, color: Colors.white,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.local_phone_outlined, color: Colors.white,),),
        ],
        
          ),
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(
                        color: Colors.white,
                          width: 2,
                        )
                      ),
                      icon: Icon(Icons.add, color: Colors.white,),
                      suffixIcon: Icon(Icons.note_outlined, color: Colors.white,),
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera_outlined, color: Colors.white,),),
                IconButton(onPressed: (){}, icon: Icon(Icons.mic_none, color: Colors.white,))
              ],
            ),
          )
          // Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     IconButton(
          //       onPressed: () {},
          //       icon: Icon(Icons.add),
          //     ),
          //     TextField(
          //       decoration: InputDecoration(
          //         border: OutlineInputBorder(),
          //       ),
          //     ),
          //
          //   ],
          // ),
        ],
      ),
    );
  }
}
