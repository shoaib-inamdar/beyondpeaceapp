import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// ignore: must_be_immutable
class Exercisecontent extends StatefulWidget {
  // String urltext;
  Exercisecontent({super.key});

  @override
  State<Exercisecontent> createState() => _ExercisecontentState();
}

class _ExercisecontentState extends State<Exercisecontent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: VideoPlayerView(
        url: 'https://archive.org/details/b95365095e1d9bdfac5eecfa8cd4eaa6',
        dataSourceType: DataSourceType.network,
      ),
      width: 200,
      height: 250,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffdadada),
      ),
    );
  }
}

class VideoPlayerView extends StatefulWidget {
  final String url;
  final DataSourceType dataSourceType;

  const VideoPlayerView({
    Key? key,
    required this.url,
    required this.dataSourceType,
  }) : super(key: key);

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  bool _isError = false;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  void _initializeVideoPlayer() async {
    try {
      switch (widget.dataSourceType) {
        case DataSourceType.asset:
          _videoPlayerController = VideoPlayerController.asset(widget.url);
          break;
        case DataSourceType.network:
          // ignore: deprecated_member_use
          _videoPlayerController = VideoPlayerController.network(widget.url);
          break;
        case DataSourceType.file:
          _videoPlayerController = VideoPlayerController.file(File(widget.url));
          break;
        case DataSourceType.contentUri:
          _videoPlayerController =
              VideoPlayerController.contentUri(Uri.parse(widget.url));
          break;
      }

      await _videoPlayerController.initialize();
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: _videoPlayerController.value.aspectRatio,
      );
      setState(() {
        _isError = false;
      });
    } catch (e) {
      print("Error initializing video: $e");
      setState(() {
        _isError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (_isError)
          Text(
            "Error loading video",
            style: TextStyle(color: Colors.red),
          ),
        if (!_isError && _videoPlayerController.value.isInitialized)
          AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: Chewie(controller: _chewieController),
          ),
      ],
    );
  }
}
