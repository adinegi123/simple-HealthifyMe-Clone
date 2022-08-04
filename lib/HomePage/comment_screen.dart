import 'package:flutter/material.dart';

import '../utils/string_utils.dart';

class Comments_Page extends StatefulWidget {
  const Comments_Page({Key? key}) : super(key: key);

  @override
  State<Comments_Page> createState() => _Comments_PageState();
}

class CommentsItem {
  late String text_inside_avatar;
  late Color color_inside_avatar;
  late String user_name;
  late String user_comment;
  late String day_of_comment;
  late String time_of_comment;
  late String likes;

  CommentsItem({
    required this.text_inside_avatar,
    required this.color_inside_avatar,
    required this.user_name,
    required this.user_comment,
    required this.day_of_comment,
    required this.time_of_comment,
    required this.likes,
  });
}

class _Comments_PageState extends State<Comments_Page> {
  List<CommentsItem> items = [
    CommentsItem(
      text_inside_avatar: 'F',
      color_inside_avatar: Colors.blue,
      user_name: 'Farhan',
      user_comment: AppString.COMMENT_ONE,
      day_of_comment: '20 May,',
      time_of_comment: '5:00 PM',
      likes: '42 likes',
    ),
    CommentsItem(
      text_inside_avatar: 'S',
      color_inside_avatar: Colors.green,
      user_name: 'Seema',
      user_comment: AppString.COMMENT_ONE,
      day_of_comment: '2 June,',
      time_of_comment: '12:45 PM',
      likes: '85 likes',
    ),
    CommentsItem(
      text_inside_avatar: 'B',
      color_inside_avatar: Colors.red,
      user_name: 'Betty',
      user_comment: AppString.COMMENT_ONE,
      day_of_comment: '2 June,',
      time_of_comment: '12:45 PM',
      likes: '301 likes',
    ),
    CommentsItem(
      text_inside_avatar: 'B',
      color_inside_avatar: Colors.purple,
      user_name: 'Blaze',
      user_comment: AppString.COMMENT_ONE,
      day_of_comment: '2 June,',
      time_of_comment: '12:45 PM',
      likes: '18 likes',
    ),
    CommentsItem(
      text_inside_avatar: 'H',
      color_inside_avatar: Colors.teal,
      user_name: 'Harish',
      user_comment: AppString.COMMENT_ONE,
      day_of_comment: '2 June,',
      time_of_comment: '12:45 PM',
      likes: '2 likes ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 13.0),
          child: Text(
            'Comments',
            style: TextStyle(color: Colors.black),
          ),
        )),
        actions: [
          Icon(
            Icons.notifications_none,
            color: Colors.black,
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white60,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => comments_of(items[index]),
                    separatorBuilder: (context, _) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 5),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: Container(
                      height: 70,
                      child: TextField(
                        decoration: InputDecoration(
                            label: Text('Comment:'),
                            labelStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(
                              Icons.send,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget comments_of(CommentsItem item) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 10, top: 20),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: item.color_inside_avatar,
                child: Text(item.text_inside_avatar),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    item.user_name,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 48),
              child: Text(
                item.user_comment,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 48.0),
                    child: Text(item.day_of_comment,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(item.time_of_comment,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(item.likes,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.reply,
                      size: 22,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/heart.png',
                      height: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
