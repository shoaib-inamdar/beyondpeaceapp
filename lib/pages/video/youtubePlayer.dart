// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  final String yturl;

  YoutubeVideoPlayer({Key? key, required this.yturl}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  YoutubePlayerController? _ytController;
  String? videoId;

  @override
  void initState() {
    super.initState();
    videoId = YoutubePlayer.convertUrlToId(widget.yturl);
    if (videoId != null) {
      _ytController = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: YoutubePlayerFlags(autoPlay: true, mute: false),
      );
    } else {
      print('Error: Video ID is null');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _ytController != null
            ? YoutubePlayer(controller: _ytController!)
            : CircularProgressIndicator(),
      ),
    );
  }
}
