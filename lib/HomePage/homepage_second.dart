import 'package:fitness_app/Pages/Sidebar/sidedrawer.dart';
import 'package:fitness_app/utils/app_color.dart';
import 'package:fitness_app/utils/string_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'comment_screen.dart';

class Homepage_Second extends StatefulWidget {
  const Homepage_Second({Key? key}) : super(key: key);

  @override
  State<Homepage_Second> createState() => _Homepage_SecondState();
}

final PageStorageBucket bucket = PageStorageBucket();
Widget currentScreen = Homepage_Second();

class CardItem {
  late final String title;
  Color color;
  Color image_color;
  IconData iconData;

  CardItem(
      {required this.title,
      required this.color,
      required this.image_color,
      required this.iconData});
}

class PostCardItem {
  late IconData iconData_two;
  late Color color_two;
  late String title_two;
  late String heading;
  late String image_add;
  late String likes;
  late String comment;

  PostCardItem(
      {required this.iconData_two,
      required this.color_two,
      required this.title_two,
      required this.heading,
      required this.image_add,
      required this.likes,
      required this.comment});
}

class _Homepage_SecondState extends State<Homepage_Second> {
  List<PostCardItem> currentList = [];

  List<CardItem> items = [
    CardItem(
        title: 'All',
        color: Colors.black,
        image_color: Colors.white,
        iconData: Icons.border_all),
    CardItem(
        iconData: Icons.file_copy,
        title: 'Blog',
        color: Colors.red,
        image_color: Colors.white),
    CardItem(
        iconData: Icons.message,
        title: 'Q&A',
        color: Colors.blue,
        image_color: Colors.white),
    CardItem(
        iconData: Icons.lightbulb,
        title: 'Hacks',
        color: Colors.green,
        image_color: Colors.white),
    CardItem(
        iconData: Icons.tv,
        title: 'Healthify Tv',
        color: Colors.yellow,
        image_color: Colors.white),
    CardItem(
        iconData: Icons.border_all,
        title: 'DailyQ',
        color: Colors.blue,
        image_color: Colors.white),
    CardItem(
        iconData: Icons.star,
        title: 'Stories',
        color: Colors.red,
        image_color: Colors.white),
    CardItem(
        iconData: Icons.emoji_food_beverage_outlined,
        title: 'Recipies',
        color: Colors.blue,
        image_color: Colors.white),
    CardItem(
        iconData: Icons.extension_sharp,
        title: 'Top 10',
        color: Colors.green,
        image_color: Colors.white),
  ];
  List<PostCardItem> secondList = [
    PostCardItem(
        iconData_two: Icons.cast_connected_sharp,
        color_two: Colors.green,
        title_two: 'Health Hub',
        heading: AppString.GETTING_FIT,
        image_add: 'assets/images/yogi.jpg',
        likes: '151 likes',
        comment: '24 comments'),
    PostCardItem(
        iconData_two: Icons.tv,
        color_two: Colors.yellow,
        title_two: 'Healthify Tv',
        heading: AppString.SMALL_DIET,
        image_add: 'assets/images/fitness.png',
        likes: '135 likes',
        comment: '10 comments'),
    PostCardItem(
        iconData_two: Icons.lightbulb,
        color_two: Colors.red,
        title_two: 'Hacks',
        heading: AppString.GETTING_FIT,
        image_add: 'assets/images/noti.png',
        likes: '10 likes',
        comment: '20 comments'),
    PostCardItem(
        iconData_two: Icons.tv,
        color_two: Colors.yellow,
        title_two: 'Healthify Tv',
        heading: AppString.GETTING_FIT,
        image_add: 'assets/images/lifest.jpg',
        likes: '135 likes',
        comment: '10 comments'),
  ];
  List<PostCardItem> fourthlist = [
    PostCardItem(
        iconData_two: Icons.comment,
        color_two: Colors.blue,
        title_two: 'Q&A',
        heading: AppString.QnA,
        image_add: 'assets/images/lifest.jpg',
        likes: '135 likes',
        comment: '10 comments'),
    PostCardItem(
        iconData_two: Icons.comment,
        color_two: Colors.blue,
        title_two: 'Q&A',
        heading: AppString.GETTING_FIT,
        image_add: 'assets/images/lifest.jpg',
        likes: '135 likes',
        comment: '10 comments'),
    PostCardItem(
        iconData_two: Icons.comment,
        color_two: Colors.blue,
        title_two: 'Q&A',
        heading: AppString.QnA,
        image_add: 'assets/images/lifest.jpg',
        likes: '135 likes',
        comment: '10 comments'),
    PostCardItem(
        iconData_two: Icons.comment,
        color_two: Colors.blue,
        title_two: 'Q&A',
        heading: AppString.GETTING_FIT,
        image_add: 'assets/images/lifest.jpg',
        likes: '135 likes',
        comment: '10 comments'),
  ];
  List<PostCardItem> thirdList = [
    PostCardItem(
        iconData_two: Icons.file_copy,
        color_two: Colors.red,
        title_two: 'Blog',
        heading: AppString.calory,
        image_add: 'assets/images/lifest.jpg',
        likes: '135 likes',
        comment: '10 comments'),
    PostCardItem(
        iconData_two: Icons.file_copy,
        color_two: Colors.red,
        title_two: 'Blog',
        heading: AppString.GETTING_FIT,
        image_add: 'assets/images/lifest.jpg',
        likes: '135 likes',
        comment: '10 comments'),
    PostCardItem(
        iconData_two: Icons.file_copy,
        color_two: Colors.red,
        title_two: 'Blog',
        heading: AppString.calory,
        image_add: 'assets/images/lifest.jpg',
        likes: '135 likes',
        comment: '10 comments'),
    PostCardItem(
        iconData_two: Icons.file_copy,
        color_two: Colors.red,
        title_two: 'Blog',
        heading: AppString.calory,
        image_add: 'assets/images/lifest.jpg',
        likes: '135 likes',
        comment: '10 comments'),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      currentList = secondList;
    });
  }

  Future<void> share() async {
    await FlutterShare.share(
        title: 'share this post',
        text: 'Share this post',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Share this post');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            Text(
              'Today',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w500),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.flash_on,
              color: AppColor.iconyellow,
              size: 30,
            ),
          ),
          Center(
            child: Text(
              '0 Days',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 140,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 9,
                separatorBuilder: (context, _) => SizedBox(
                  width: 10,
                ),
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      if (index % 3 == 0) {
                        setState(() {
                          currentList = secondList;
                        });
                      } else if (index % 3 == 1) {
                        setState(() {
                          currentList = thirdList;
                        });
                      } else {
                        setState(() {
                          currentList = fourthlist;
                        });
                      }
                    },
                    child: card_builder(items[index])),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      reusable_post_builder(currentList![index]),
                  separatorBuilder: (context, _) => SizedBox(
                        height: 15,
                      ),
                  itemCount: 4),
            )
          ],
        ),
      ),
    );
  }

  Widget card_builder(
    CardItem item,
  ) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, .2),
                ),
              ]),
          child: Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: item.color,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Icon(
                item.iconData,
                // fit: BoxFit.cover,
                size: 25,
                color: item.image_color,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          item.title,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget reusable_post_builder(PostCardItem item_two) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(
                      item_two.iconData_two,
                      size: 17,
                    ),
                    radius: 13,
                    backgroundColor: item_two.color_two,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 6),
                      child: Text(
                        item_two.title_two,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 2, top: 7),
                  child: Image.asset(
                    'assets/images/menudots.png',
                    height: 24,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
            margin: EdgeInsets.only(left: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item_two.heading,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              item_two.image_add,
              height: 250,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'assets/images/hearttwo.png',
                      height: 24,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Comments_Page()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset(
                        'assets/images/comments.png',
                        height: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 2),
                    child: GestureDetector(
                      onTap: () async {
                        share();
                      },
                      child: Image.asset(
                        'assets/images/send.png',
                        height: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 2,
                    ),
                    child: Image.asset(
                      'assets/images/saveb.png',
                      height: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 3, bottom: 10),
              child: Text(item_two.likes,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0, top: 3, bottom: 10),
              child: Text(item_two.comment,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ],
    );
  }
}
