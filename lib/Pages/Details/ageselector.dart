import 'package:fitness_app/Pages/Details/height.dart';
import 'package:fitness_app/utils/string_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class AgeSelector extends StatefulWidget {
  const AgeSelector({Key? key}) : super(key: key);

  @override
  State<AgeSelector> createState() => _AgeSelectorState();
}

class _AgeSelectorState extends State<AgeSelector> {
  var age = 25;
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
                currentStep: 4,
                size: 2,
                selectedSize: 3,
                selectedColor: Colors.red,
                unselectedColor: Colors.grey,
                roundedEdges: Radius.circular(15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                AppString.AGE,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              AppString.DETERMINES,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            Text(
              AppString.YEARS,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
            wheeler(),
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
                        MaterialPageRoute(builder: (_) => HeightPage()));
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

  Widget wheeler() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.arrow_right,
          size: 80,
          color: Colors.red,
        ),
        WheelChooser.integer(
          onValueChanged: (s) => print(s.toString()),
          listWidth: 70,
          maxValue: 100,
          listHeight: 300.0,
          minValue: 1,
          initValue: 19,
          selectTextStyle: TextStyle(
              color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          unSelectTextStyle: TextStyle(color: Colors.grey, fontSize: 18),
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
