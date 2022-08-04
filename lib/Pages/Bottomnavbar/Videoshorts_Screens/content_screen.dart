import 'package:chewie/chewie.dart';
import 'package:fitness_app/Pages/Bottomnavbar/Videoshorts_Screens/like_icon.dart';
import 'package:fitness_app/Pages/Bottomnavbar/Videoshorts_Screens/options_screen.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Content_Screen extends StatefulWidget {
  const Content_Screen({Key? key, required this.src}) : super(key: key);

  final String src;
  @override
  State<Content_Screen> createState() => _Content_ScreenState();
}

class _Content_ScreenState extends State<Content_Screen> {
  bool _liked = false;
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  @override
  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(widget.src!);
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      showControls: false,
      looping: true,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController!.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
            ? GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    _liked = !_liked;
                  });
                },
                child: Chewie(
                  controller: _chewieController!,
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 10),
                  Text('Loading...')
                ],
              ),
        if (_liked)
          Center(
            child: LikeIcon(),
          ),
        Options_Screen()
      ],
    );
  }
}
