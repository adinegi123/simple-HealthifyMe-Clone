import 'package:flutter/material.dart';

class About_UsPage extends StatefulWidget {
  const About_UsPage({Key? key}) : super(key: key);

  @override
  State<About_UsPage> createState() => _About_UsPageState();
}

class _About_UsPageState extends State<About_UsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
            child: Text(
          'About Us',
          style: TextStyle(color: Colors.black),
        )),
        actions: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Get the App',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 50,
                ),
                child: Image.asset(
                  'assets/images/hh.png',
                  height: 40,
                  color: Colors.red,
                ),
              ),
              Text(
                'Healthify Me',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Center(
              child: Text(
            'Meet The Change.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          )),
          Center(
              child: Text(
            'Meet HealthifyMe.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          )),
          SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            'With the all-new HealthifyMe,kickstart your',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          )),
          Center(
              child: Text(
            'journey towards an all new you.',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          )),
          Center(
              child: Text(
            'Talk to our expert to know more.',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          )),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Chat with Us',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.whatsapp,
                  color: Colors.green,
                  size: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
