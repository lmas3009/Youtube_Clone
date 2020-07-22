import 'package:flutter/material.dart';

class Libary extends StatefulWidget {
  Libary({Key key}) : super(key: key);

  @override
  _LibaryState createState() => _LibaryState();
}

class _LibaryState extends State<Libary> {
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
      body: Container(
        child: Padding(padding: const EdgeInsets.all(5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child:InkWell(
                onTap: (){},
              child: Row(
                children: [
                  Icon(Icons.history,color: Colors.grey,),
                  Container(margin: const EdgeInsets.only(left: 20),),
                  Text("History",style: TextStyle(fontSize: 15),),
                ],
              )
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left:20,right: 20,bottom: 20),
              child:InkWell(
                onTap: (){},
              child: Row(
                children: [
                  Icon(Icons.file_download,color: Colors.grey,),
                  Container(margin: const EdgeInsets.only(left: 20),),
                  Text("Downloads",style: TextStyle(fontSize: 15),),
                ],
              )
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left:20,right: 20,bottom: 20),
              child:InkWell(
                onTap: (){},
              child: Row(
                children: [
                  Icon(Icons.ondemand_video,color: Colors.grey,),
                  Container(margin: const EdgeInsets.only(left: 20),),
                  Text("Your Videos",style: TextStyle(fontSize: 15),),
                ],
              ),
            )
            ),
            Container(
              padding: const EdgeInsets.only(left:20,right: 20,bottom: 20),
              child:InkWell(
                onTap: (){},
              child: Row(
                children: [
                  Icon(Icons.local_offer,color: Colors.grey,),
                  Container(margin: const EdgeInsets.only(left: 20),),
                  Text("Purchases",style: TextStyle(fontSize: 15),),
                ],
              )
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left:20,right: 20,bottom: 20),
              child:InkWell(
                onTap: (){},
              child: Row(
                children: [
                  Icon(Icons.watch_later,color: Colors.grey,),
                  Container(margin: const EdgeInsets.only(left: 20),),
                  Text("Watch Later",style: TextStyle(fontSize: 15),),
                ],
              ),
            )
            ),
            Divider(
              color: Colors.grey,
              height: 2,
            ),
            Container(margin: const EdgeInsets.only(top: 10),),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text("PlayLists",style: TextStyle(fontSize: 15),),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child:InkWell(
                onTap: (){},
              child: Row(
                children: [
                  Icon(Icons.add,color: Colors.blue,),
                  Container(margin: const EdgeInsets.only(left: 20),),
                  Text("New Playlist",style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.bold),),
                ],
              ),
              ),
            ),

          ],
        ),
        ),

      )
    );
  }
}