import 'package:sharp_flutter/models/tv/video.dart';
import 'package:sharp_flutter/models/tv/topic.dart';

class tvHomeModel {
  List<VideoSectionModel> sections = [];
  List<TopicModel> topics = [] ;
}

class VideoSectionModel {
  String title;
  List<VideoModel> items;

  VideoSectionModel({this.title, this.items});

  VideoSectionModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['items'] != null) {
      items = new List<VideoModel>();
      json['items'].forEach((v) {
        items.add(new VideoModel.fromJson(v));
      });
    }
  }
 Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] =  this.title ;
    if(this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList() ;
    }
    return data;
 }
}