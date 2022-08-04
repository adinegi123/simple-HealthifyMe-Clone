import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Create_Videos extends StatefulWidget {
  const Create_Videos({Key? key}) : super(key: key);

  @override
  State<Create_Videos> createState() => _Create_VideosState();
}

class _Create_VideosState extends State<Create_Videos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.slow_motion_video_outlined),
                  backgroundColor: Colors.red,
                ),
                title: Text('Create a Short',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.upload_outlined),
                  backgroundColor: Colors.red,
                ),
                title: Text('Upload a video',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.live_tv),
                  backgroundColor: Colors.red,
                ),
                title: Text('Go live',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
