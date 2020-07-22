import 'package:flutter/material.dart';
import 'package:youtube_clone/model/video.dart';
import 'package:youtube_clone/view/videocard.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

List<Video> makeVideos() {
    List<Video> vids = [];
      vids.add(new Video(
        //NetworkImage("https://i.ytimg.com/vi/Wi-YBg8xJEE/hqdefault.jpg"),
        NetworkImage("https://i.ytimg.com/vi/LPzHpxKxJcA/hqdefault.jpg"),
        "Wi-YBg8xJEE",
        1200,
        "5 hrs",
        "Building and Flying a Kite with No String!",
        "FliteTest",
        NetworkImage("https://yt3.ggpht.com/-MrZlwthWzi4/AAAAAAAAAAI/AAAAAAAAAAA/4neBPUuXxK4/s800-c-k-no-mo-rj-c0xffffff/photo.jpg")
      ));
      vids.add(new Video(
        //NetworkImage("https://i.ytimg.com/vi/Wi-YBg8xJEE/hqdefault.jpg"),
        NetworkImage("https://i.ytimg.com/vi/dudw5JiklKc/hqdefault.jpg"),
        "dudw5JiklKc",
        1200,
        "5 hrs",
        "Card Throwing Trick Shots 2",
        "Dude Perfect",
        NetworkImage("https://yt3.ggpht.com/-256o76I3YUo/AAAAAAAAAAI/AAAAAAAAAAA/cESWDt8qKyc/s800-c-k-no-mo-rj-c0xffffff/photo.jpg")
      ));
    
    return vids;
  }


  List<Widget> getVideos(bool isSubscriptionPage) {
    List<Video> videos = makeVideos();
    List<Widget> cards = [];
    for (Video video in videos) {
      cards.add(Videocard(video: video,));
    }
    return cards;   
  }


/*YoutubePlayerController _controller = YoutubePlayerController(
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
);*/

class _HomepageState extends State<Homepage> {
  
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
    body:Container(
      child:ListView(
        children: getVideos(true),
      ),
    )
    );
  }
}