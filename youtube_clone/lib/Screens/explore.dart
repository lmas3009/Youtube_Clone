import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Explore extends StatefulWidget {
  Explore({Key key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
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

class _ExploreState extends State<Explore> {
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
          Padding(
          padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.red, Colors.red[200]],
                          ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(margin: const EdgeInsets.only(left: 20),),
                            Icon(Icons.live_tv,color: Colors.white,),
                            Container(margin: const EdgeInsets.only(left: 10),),
                            Text("Trending",style: TextStyle(color: Colors.white,)),
                          ],
                        )
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.green[800], Colors.green[200]],
                          ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(margin: const EdgeInsets.only(left: 20),),
                            Icon(Icons.queue_music,color: Colors.white,),
                            Container(margin: const EdgeInsets.only(left: 10),),
                            Text("Music",style: TextStyle(color: Colors.white,),)
                          ],
                        )
                      ),
                    )
                  ],
                ),
                Container(margin: const EdgeInsets.only(top: 10),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.orange[500], Colors.orange[200]],
                          ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(margin: const EdgeInsets.only(left: 20),),
                            Icon(Icons.gamepad,color: Colors.white,),
                            Container(margin: const EdgeInsets.only(left: 10),),
                            Text("Gaming",style: TextStyle(color: Colors.white,),)
                          ],
                        )
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blue[200]],
                          ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(margin: const EdgeInsets.only(left: 20),),
                            Icon(Icons.live_tv,color: Colors.white,),
                            Container(margin: const EdgeInsets.only(left: 10),),
                            Text("News",style: TextStyle(color: Colors.white,),)
                          ],
                        )
                      ),
                    )
                  ],
                ),
                Container(margin: const EdgeInsets.only(top: 10),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.yellow[800], Colors.yellow[200]],
                          ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(margin: const EdgeInsets.only(left: 20),),
                            Icon(Icons.local_movies,color: Colors.white,),
                            Container(margin: const EdgeInsets.only(left: 10),),
                            Text("Movies",style: TextStyle(color: Colors.white,),)
                          ],
                        )
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blueGrey[700], Colors.blueGrey[200]],
                          ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(margin: const EdgeInsets.only(left: 20),),
                            Icon(Icons.live_tv,color: Colors.white,),
                            Container(margin: const EdgeInsets.only(left: 5),),
                            Text("Fashion & Bea...",style: TextStyle(color: Colors.white,),)
                          ],
                        )
                      ),
                    )
                  ],
                ),
                Container(margin: const EdgeInsets.only(top: 10),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.green[700], Colors.green[200]],
                          ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(margin: const EdgeInsets.only(left: 20),),
                            Icon(Icons.chrome_reader_mode,color: Colors.white,),
                            Container(margin: const EdgeInsets.only(left: 10),),
                            Text("Learning",style: TextStyle(color: Colors.white,),)
                          ],
                        )
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 165,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.orange[700], Colors.orange[200]],
                          ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(margin: const EdgeInsets.only(left: 20),),
                            Icon(Icons.live_tv,color: Colors.white,),
                            Container(margin: const EdgeInsets.only(left: 10),),
                            Text("Live",style: TextStyle(color: Colors.white,),)
                          ],
                        )
                      ),
                    )
                  ],
                ),
                Container(margin: const EdgeInsets.only(top: 10),),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Trending videos",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17)),
                  ),
                ),
                Container(margin: const EdgeInsets.only(top: 10),),
                Container(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: YoutubePlayer(
                      controller: _controller,
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
        )
        ]
      )
      ) 
    );
  }
}