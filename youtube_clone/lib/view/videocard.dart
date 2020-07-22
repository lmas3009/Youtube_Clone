import 'package:flutter/material.dart';
import 'package:youtube_clone/model/video.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videocard extends StatelessWidget{
  Videocard({this.video});

  final Video video;
  @override
  Widget build(BuildContext context) {
    return Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                    },
                  child:Container(
                    height: 200,
                    width: double.infinity,
                    child: playvideo(video.id),
                  ),
                  ),
                  Container(margin: const EdgeInsets.only(top: 10,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: video.profilePicture,
                        radius: 25,
                      ),
                      Container(margin: const EdgeInsets.only(left:10),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(video.videoTitle,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Container(margin: const EdgeInsets.only(top:5),),
                          Row(
                            children: [
                              Text(video.channelName+" ."),
                              Container(margin: const EdgeInsets.only(left:5),),
                              Text(video.viewCount.toString()+" views ."),
                              Container(margin: const EdgeInsets.only(left:5),),
                            ],
                          )
                          
                        ],
                      )
                    ],
                  ),
                  Container(margin: const EdgeInsets.only(top:20),),
                ],
              ),
            );
  }
}


Widget playvideo(String id){
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: id,
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        enableCaption: true
    ),
);

    print("hello");
  return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.blueAccent,
    );
}

