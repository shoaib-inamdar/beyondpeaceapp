import 'package:beyondpeace/pages/video/videodatamodel.dart';
import 'package:beyondpeace/pages/video/youtubePlayer.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:youtube_videoplayer/videodatamodel.dart';
import 'dart:convert';

// import 'package:youtube_videoplayer/youtubePlayer.dart';

class Video_List extends StatelessWidget {
  const Video_List({Key? key}) : super(key: key);
  Future<List<VideoDataModel>> readJsonData() async {
    final jsonData = await rootBundle.loadString('lib/videolist.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => VideoDataModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: readJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(
              child: Text('${data.error}'),
            );
          } else if (data.hasData) {
            var items = data.data as List<VideoDataModel>;
            return ListView.builder(
              // ignore: unnecessary_null_comparison
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print(items[index].title.toString());
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => YoutubeVideoPlayer(
                                yturl: '${items[index].videourl.toString()}')));
                  },
                  child: Card(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    elevation: 5,
                    color: Colors.orangeAccent,
                    child: Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          items[index].title.toString(),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
