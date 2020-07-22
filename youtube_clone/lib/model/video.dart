import 'package:flutter/material.dart';

 class Video {
  NetworkImage tumbnail;
  String id;
  int viewCount;
  String uploadDate;
  String videoTitle;
  String channelName;
  NetworkImage profilePicture;

  Video(NetworkImage tumbnail, String id,int viewCount, String uploadDate, String videoTitle,String channelName ,NetworkImage profile) {
  
    this.tumbnail = tumbnail;
    this.id = id;
    this.viewCount = viewCount;
    this.uploadDate = uploadDate;
    this.videoTitle = videoTitle;
    this.channelName = channelName;
    this.profilePicture = profile;
  }
}