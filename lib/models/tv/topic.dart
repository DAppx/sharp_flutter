class TopicModel {
  String title;
  String cover;
  String tag;
  String desc;
  String updateAt;
  String id;

  TopicModel({this.title, this.cover, this.tag, this.desc, this.updateAt, this.id});

  TopicModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    cover = json['cover'];
    tag = json['tag'];
    desc = json['desc'];
    updateAt = json['updateAt'];
    id = json['id'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    data['cover'] = this.cover;
    data['tag'] = this.tag;
    data['desc'] = this.desc;
    data['updateAt'] = this.updateAt;
    data['id'] = this.id;
    return data;
  }
}