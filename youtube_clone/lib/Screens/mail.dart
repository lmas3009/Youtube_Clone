import 'package:flutter/material.dart';

class Mail extends StatefulWidget {
  Mail({Key key}) : super(key: key);

  @override
  _MailState createState() => _MailState();
}

class _MailState extends State<Mail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container(
            child: Row(
              children: [
              Image.asset("assets/images/youtube_logo.png",scale: 15,),
              Text("Youtube",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Icon(Icons.cast,color: Colors.black,),
                Container(margin: const EdgeInsets.only(left: 20),),
                Icon(Icons.video_call,color: Colors.black,),
                Container(margin: const EdgeInsets.only(left: 20),),
                Icon(Icons.search,color: Colors.black,),
                Container(margin: const EdgeInsets.only(left: 10),),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      )
                    ]
                  ),
                  child:CircleAvatar(
                  backgroundImage: AssetImage('assets/images/logo.jpg'),
                  radius: 19,
                ),
                ),
                Container(margin: const EdgeInsets.only(left: 12),),
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: Text("No Inbox Till Now"),
      ),
    );
  }
}