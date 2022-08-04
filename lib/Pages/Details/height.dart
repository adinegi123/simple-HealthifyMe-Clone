import 'package:fitness_app/Pages/Details/weight.dart';
import 'package:fitness_app/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class HeightPage extends StatefulWidget {
  const HeightPage({Key? key}) : super(key: key);

  @override
  State<HeightPage> createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {
  bool onSelect = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: const StepProgressIndicator(
                  totalSteps: 11,
                  currentStep: 5,
                  size: 2,
                  selectedSize: 3,
                  selectedColor: Colors.red,
                  unselectedColor: Colors.grey,
                  roundedEdges: Radius.circular(15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  AppString.TALL,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              const Text(
                AppString.CALCULATE,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              const Text(
                AppString.GOALS,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 400,
                width: 400,
                child: onSelect ? wheeler_cm() : cust_wheeler_ft(),
              ),
              // onSelect ? wheeler() : Custom_wheeler(),
              const SizedBox(
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
                textOff: "Ft/In",
                textOn: "Cm",
                colorOn: Colors.white,
                colorOff: Colors.white,
                background: const Color(0xffe4e5eb),
                buttonColor: Colors.red,
                inactiveColor: const Color(0xff636f7b),
              ),
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
            offset: const Offset(0, .2),
          ),
        ]),
        child: Row(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 6.0, right: 4),
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
                  child: const Center(
                    child: Text(
                      'BACK',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Weight_Page()));
                  },
                  child: const Center(
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(3.0),
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

  Widget cust_wheeler_ft() {
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
              maxValue: 8,
              listWidth: 30,
              listHeight: 500,
              minValue: 3,
              initValue: 4,
              selectTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              unSelectTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Text(
            '\'',
            style: TextStyle(
                color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: WheelChooser.integer(
              onValueChanged: (s) => print(s.toString()),
              maxValue: 11,
              listWidth: 70,
              listHeight: 400,
              minValue: 0,
              initValue: 4,
              selectTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              unSelectTextStyle:
                  const TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Text(
            '\"',
            style: TextStyle(
                color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
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

  Widget wheeler_cm() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.arrow_right,
              size: 80,
              color: Colors.red,
            )),
        WheelChooser.integer(
          onValueChanged: (s) => print(s.toString()),
          maxValue: 250,
          listWidth: 100,
          listHeight: 400,
          minValue: 150,
          initValue: 165,
          selectTextStyle: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          unSelectTextStyle: const TextStyle(color: Colors.black, fontSize: 18),
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.arrow_left,
              size: 80,
              color: Colors.red,
            )),
      ],
    );
  }
}
