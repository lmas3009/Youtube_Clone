import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Subcription extends StatefulWidget {
  Subcription({Key key}) : super(key: key);

  @override
  _SubcriptionState createState() => _SubcriptionState();
}

YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'Py0bkhMhF_w',
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        enableCaption: true
    ),
);
YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: 'JGNopwFcz3A',
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        enableCaption: true
    ),
);
YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: 'Yq3kadlkoJw',
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        enableCaption: true
    ),
);
YoutubePlayerController _controller3 = YoutubePlayerController(
    initialVideoId: 'dxj8JwdQ7Lk',
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        enableCaption: true
    ),
);


class _SubcriptionState extends State<Subcription> {
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
        child:ListView(children: [
        Padding(padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
              Container(margin: const EdgeInsets.only(left: 5),),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: 70,
                  height: 90,
                  child:InkWell(
                    onTap: (){},
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/youtube_logo.png"),
                        backgroundColor: Colors.transparent,
                        radius: 30,
                      ),
                      Container(margin: const EdgeInsets.only(top: 8),),
                      Text("Youtube",style: TextStyle(fontSize: 13),)
                    ],
                  ),
                ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: 70,
                  height: 90,
                  child:InkWell(
                    onTap: (){},
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/logo.jpg",),
                        backgroundColor: Colors.transparent,
                        radius: 30,
                      ),
                      Container(margin: const EdgeInsets.only(top: 8),),
                      Text("LMAS",style: TextStyle(fontSize: 13),)
                    ],
                  ),
                ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width:70,
                  height: 90,
                  child:InkWell(
                    onTap: (){},
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/logo.jpg",),
                        backgroundColor: Colors.transparent,
                        radius: 30,
                      ),
                      Container(margin: const EdgeInsets.only(top: 8),),
                      Text("RPGSA",style: TextStyle(fontSize: 13),)
                    ],
                  ),
                ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: 70,
                  height: 90,
                  child:InkWell(
                    onTap: (){},
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/logo.jpg",),
                        backgroundColor: Colors.transparent,
                        radius: 30,
                      ),
                      Container(margin: const EdgeInsets.only(top: 8),),
                      Text("RPG",style: TextStyle(fontSize: 13),)
                    ],
                  ),
                ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5,left: 10),
                  width: 50,
                  height: 90,
                  child:InkWell(
                    onTap: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text("ALL",style: TextStyle(color: Colors.blue),),
                        backgroundColor: Colors.transparent,
                        radius: 20,
                      ),
                    ],
                  ),
                ),
                ),
              ],
            ),
            Container(margin: const EdgeInsets.only(top: 12),),
            Divider(
              height: 2,
              color: Colors.grey,
            ),
            Container(margin: const EdgeInsets.only(top: 20,)),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: YoutubePlayer(
                      controller: _controller1,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.blueAccent,
                    )
                  ),
                  Container(margin: const EdgeInsets.only(top: 10,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/logo.jpg"),
                        radius: 25,
                      ),
                      Container(margin: const EdgeInsets.only(left:10),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("The most epic game deign by RPG",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Container(margin: const EdgeInsets.only(top:5),),
                          Row(
                            children: [
                              Text("RPG ."),
                              Container(margin: const EdgeInsets.only(left:5),),
                              Text("1.2M views ."),
                              Container(margin: const EdgeInsets.only(left:5),),
                              Text("1 year ago")
                            ],
                          )
                          
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(margin: const EdgeInsets.only(top: 20,)),
             Container(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: YoutubePlayer(
                      controller: _controller2,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.blueAccent,
                    )
                  ),
                  Container(margin: const EdgeInsets.only(top: 10,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/logo.jpg"),
                        radius: 25,
                      ),
                      Container(margin: const EdgeInsets.only(left:10),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("The most epic game deign by RPG",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Container(margin: const EdgeInsets.only(top:5),),
                          Row(
                            children: [
                              Text("RPG ."),
                              Container(margin: const EdgeInsets.only(left:5),),
                              Text("1.2M views ."),
                              Container(margin: const EdgeInsets.only(left:5),),
                              Text("1 year ago")
                            ],
                          )
                          
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(margin: const EdgeInsets.only(top: 20,)),
             Container(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: YoutubePlayer(
                      controller: _controller3,
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.blueAccent,
                    )
                  ),
                  Container(margin: const EdgeInsets.only(top: 10,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/logo.jpg"),
                        radius: 25,
                      ),
                      Container(margin: const EdgeInsets.only(left:10),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("The most epic game deign by RPG",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Container(margin: const EdgeInsets.only(top:5),),
                          Row(
                            children: [
                              Text("RPG ."),
                              Container(margin: const EdgeInsets.only(left:5),),
                              Text("1.2M views ."),
                              Container(margin: const EdgeInsets.only(left:5),),
                              Text("1 year ago")
                            ],
                          )
                          
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(margin: const EdgeInsets.only(top: 20,)),
          ],
        ),
        ),
        ]
      )
      )
    );
  }
}