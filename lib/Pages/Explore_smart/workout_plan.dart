import 'package:flutter/material.dart';

class Workout_Plan extends StatefulWidget {
  const Workout_Plan({Key? key}) : super(key: key);

  @override
  State<Workout_Plan> createState() => _Workout_PlanState();
}

class CardItem {
  final String text1;
  final String text2;
  final String text3;
  String imgsrc;
  final String subtitle;

  CardItem(
      {required this.text1,
      required this.text2,
      required this.text3,
      required this.imgsrc,
      required this.subtitle});
}

class _Workout_PlanState extends State<Workout_Plan> {
  bool value = false;
  List<CardItem> items = [
    CardItem(
        text1: '12 Months',
        text2: '199 per month',
        text3: 'Total-₹2,399',
        imgsrc: 'assets/images/biryani.png',
        subtitle: 'A biryani is more expensive!'),
    CardItem(
        text1: '12 Months',
        text2: '199 per month',
        text3: 'Total-₹2,399',
        imgsrc: 'assets/images/pizza.png',
        subtitle: 'A biryani is more expensive'),
    CardItem(
        text1: '12 Months',
        text2: '199 per month',
        text3: 'Total-₹2,399',
        imgsrc: 'assets/images/tea.png',
        subtitle: 'A biryani is more expensive'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      height: 350,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                          'assets/images/lifest.jpg',
                        ),
                      )),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          margin: EdgeInsets.fromLTRB(15, 50, 10, 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Smart Diet & Workout Plan',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Starts at ₹ 199 per month',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 4),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.red[100],
                        radius: 28,
                        child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 15,
                            child: Icon(
                              Icons.signal_cellular_alt,
                              size: 15,
                              color: Colors.white,
                            ))),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'Powered by AI to help you achieve your goal 2x faster',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 260,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => card_builder(items[index]),
                  itemCount: 3,
                  separatorBuilder: (context, _) => SizedBox(
                    width: 15,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Text(
                    'Here\'s what you get:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )),
              reusable_listTile(
                Icons.document_scanner,
                'DIY Hypertension Friendly Diet Plan',
              ),
              reusable_listTile(Icons.health_and_safety,
                  'DIY Hypertension Friendly Diet Plan'),
              reusable_listTile(
                  Icons.waves, 'DIY Hypertension Friendly Diet Plan'),
              reusable_listTile(Icons.new_releases_outlined,
                  'DIY Hypertension Friendly Diet Plan'),
              reusable_listTile(
                  Icons.snooze, 'DIY Hypertension Friendly Diet Plan'),
              reusable_listTile(Icons.emoji_food_beverage_outlined,
                  'DIY Hypertension Friendly Diet Plan'),
              reusable_listTile(
                  Icons.query_stats, 'DIY Hypertension Friendly Diet Plan'),
              reusable_listTile(
                  Icons.track_changes, 'DIY Hypertension Friendly Diet Plan'),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Visibility(
                    visible: value,
                    child: Container(
                      height: 75,
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, .2),
                        ),
                      ]),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '12 months @ ₹199/month',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12),
                              ),
                              Icon(Icons.arrow_drop_down_sharp)
                            ],
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                'BUY NOW',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
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
          width: 260,
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, .2),
                ),
              ]),
          child: GestureDetector(
            onTap: () {
              setState(() {
                value = true;
              });
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item.text1,
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item.text2,
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 12),
                        child: Text(item.text3,
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        leading: Image.asset(
                          item.imgsrc,
                          height: 50,
                          width: 50,
                        ),
                        subtitle: Text(
                          item.subtitle,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Center(
                        child: Text(
                          'BUY NOW',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ],
    );
  }

  reusable_listTile(IconData icon, String title) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.red,
        child: Icon(
          icon,
          size: 15,
          color: Colors.white,
        ),
        radius: 20,
      ),
      title: Text(title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        size: 18,
      ),
    );
  }
}
