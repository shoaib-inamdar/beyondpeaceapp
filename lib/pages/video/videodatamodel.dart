class VideoDataModel{
  int? id;
  String? title;
  String? videourl;
  VideoDataModel(this.id,this.title,this.videourl);
  VideoDataModel.fromJson(Map<String,dynamic> json){
    id=json['id'];
    title=json['title'];
    videourl=json['videourl'];
  }
}