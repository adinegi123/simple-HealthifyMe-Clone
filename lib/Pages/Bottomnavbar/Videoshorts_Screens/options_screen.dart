import 'package:flutter/material.dart';

class Options_Screen extends StatelessWidget {
  const Options_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 110),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.person, size: 18),
                          radius: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Jessica Moore_09',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.verified,
                          size: 15,
                          color: Colors.white,
                        ),
                        SizedBox(width: 6),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Follow',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Love it Love that 💙❤💛 ...',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.music_note,
                          size: 15,
                          color: Colors.white,
                        ),
                        Text('Original Audio - some music track',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                  Text('601k',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  SizedBox(height: 20),
                  Icon(
                    Icons.comment_rounded,
                    color: Colors.white,
                  ),
                  Text('1123',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  SizedBox(height: 20),
                  Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
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
