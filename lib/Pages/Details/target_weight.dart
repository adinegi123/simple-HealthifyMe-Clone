import 'package:fitness_app/Pages/Details/goal.dart';
import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:wheel_chooser/wheel_chooser.dart';
import '../../utils/string_utils.dart';

class Target_weight extends StatefulWidget {
  const Target_weight({Key? key}) : super(key: key);

  @override
  State<Target_weight> createState() => _Target_weightState();
}

class _Target_weightState extends State<Target_weight> {
  bool onSelect = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: StepProgressIndicator(
                totalSteps: 11,
                currentStep: 8,
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
                AppString.TARGET_WEIGHT,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              AppString.TARGET_WEIGHT_TWO,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            Text(
              AppString.WEIGHT_LAST,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Gain 7 Kg',
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, color: Colors.red),
            ),

            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 400,
              width: 400,
              child: onSelect ? cust_wheeler_kg() : cust_wheeler_lb(),
            ),
            // onSelect ? wheeler() : Custom_wheeler(),
            SizedBox(
              height: 40,
            ),
            SlidingSwitch(
              value: true,
              width: 150,
              onChanged: (bool value) {
                setState(() {
                  onSelect = !onSelect;
                });
              },
              height: 35,
              animationDuration: const Duration(milliseconds: 300),
              onTap: () {
                setState(() {
                  onSelect != onSelect;
                });
              },
              onDoubleTap: () {
                setState(() {
                  onSelect != onSelect;
                });
              },
              onSwipe: () {
                setState(() {
                  onSelect != onSelect;
                });
              },
              textOff: "Lb",
              textOn: "Kg",
              colorOn: Colors.white,
              colorOff: Colors.white,
              background: const Color(0xffe4e5eb),
              buttonColor: Colors.red,
              inactiveColor: const Color(0xff636f7b),
            ),
          ],
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
                        MaterialPageRoute(builder: (_) => Goal_to_reach()));
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

  Widget cust_wheeler_kg() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.arrow_right,
                size: 80,
                color: Colors.red,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: WheelChooser.integer(
              onValueChanged: (s) => print(s.toString()),
              maxValue: 300,
              listWidth: 80,
              listHeight: 500,
              minValue: 30,
              initValue: 43,
              selectTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              unSelectTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Text(
            '.',
            style: TextStyle(
                color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: WheelChooser.integer(
              onValueChanged: (s) => print(s.toString()),
              maxValue: 9,
              listWidth: 60,
              listHeight: 400,
              minValue: 0,
              initValue: 0,
              selectTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              unSelectTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.arrow_left,
                size: 80,
                color: Colors.red,
              )),
        ],
      ),
    );
  }

  Widget cust_wheeler_lb() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.arrow_right,
                size: 80,
                color: Colors.red,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: WheelChooser.integer(
              onValueChanged: (s) => print(s.toString()),
              maxValue: 660,
              listWidth: 80,
              listHeight: 500,
              minValue: 66,
              initValue: 106,
              selectTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              unSelectTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Text(
            '.',
            style: TextStyle(
                color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: WheelChooser.integer(
              onValueChanged: (s) => print(s.toString()),
              maxValue: 9,
              listWidth: 60,
              listHeight: 400,
              minValue: 0,
              initValue: 9,
              selectTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              unSelectTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.arrow_left,
                size: 80,
                color: Colors.red,
              )),
        ],
      ),
    );
  }
}
