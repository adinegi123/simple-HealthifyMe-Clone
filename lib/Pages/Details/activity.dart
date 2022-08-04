import 'package:fitness_app/Pages/Details/height.dart';
import 'package:fitness_app/Pages/Details/target_weight.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../utils/string_utils.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  bool ischeckedfirst = false;
  bool ischecked_second = false;
  bool ischecked_third = false;
  bool ischecked_fourth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: StepProgressIndicator(
                  totalSteps: 11,
                  currentStep: 7,
                  size: 2,
                  selectedSize: 3,
                  selectedColor: Colors.red,
                  unselectedColor: Colors.grey,
                  roundedEdges: Radius.circular(15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  AppString.ACTIVE,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                AppString.Lifestyle,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              Text(
                AppString.CALORIE,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    ischeckedfirst = true;
                    ischecked_second = false;
                    ischecked_third = false;
                    ischecked_fourth = false;
                  });
                },
                child: reusablecard(
                    AppString.LITTLE_ACTIVE,
                    AppString.LITTLE_ACTIVE_ONE,
                    'assets/images/sit.png',
                    ischeckedfirst),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    ischeckedfirst = false;
                    ischecked_second = true;
                    ischecked_third = false;
                    ischecked_fourth = false;
                  });
                },
                child: reusablecard(
                    AppString.LIGHTLY_ACTIVE,
                    AppString.LIGHTLY_ACTIVE_ONE,
                    'assets/images/stand.png',
                    ischecked_second),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    ischeckedfirst = false;
                    ischecked_second = false;
                    ischecked_third = true;
                    ischecked_fourth = false;
                  });
                },
                child: reusablecard(
                    AppString.MODERATE_ACTIVE,
                    AppString.MODERATE_ACTIVE_ONE,
                    'assets/images/mactive.png',
                    ischecked_third),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    ischeckedfirst = false;
                    ischecked_second = false;
                    ischecked_third = false;
                    ischecked_fourth = true;
                  });
                },
                child: reusablecard(
                    AppString.VERY_ACTIVE,
                    AppString.VERY_ACTIVE_ONE,
                    'assets/images/vactive.png',
                    ischecked_fourth),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 50,
        // margin: EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,

        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, .2),
          ),
        ]),
        child: Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, right: 4),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 17,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'BACK',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Target_weight()));
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.red,
                    size: 17,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget reusablecard(
      String title, String subtitle, String imageStr, bool isChecked) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: isChecked ? Colors.black : Colors.transparent, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(0, .2),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Image.asset(
                    imageStr,
                    height: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
