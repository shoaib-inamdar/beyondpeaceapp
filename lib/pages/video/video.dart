// import 'package:beyondpeace/pages/video/video_list.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:youtube_videoplayer/video_list.dart';

class Videopage extends StatefulWidget {
  const Videopage({super.key, required this.title});

  final String title;

  @override
  State<Videopage> createState() => _VideopageState();
}

class _VideopageState extends State<Videopage> {
  YoutubePlayerController _ytcontroller = YoutubePlayerController(
    initialVideoId: 'HRZLzNoow0g',
    flags: YoutubePlayerFlags(autoPlay: false),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: YoutubePlayer(
            controller: _ytcontroller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.blue,
            topActions: [
              SizedBox(
                width: 15,
              ),
              Text(_ytcontroller.metadata.title),
            ],
          ),
        ),
      ),
    );
  }
}
