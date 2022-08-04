import 'package:fitness_app/Pages/Details/ageselector.dart';
import 'package:fitness_app/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Select_Gender extends StatefulWidget {
  const Select_Gender({Key? key}) : super(key: key);

  @override
  State<Select_Gender> createState() => _Select_GenderState();
}

class _Select_GenderState extends State<Select_Gender> {
  bool isMale = false;
  bool isFemale = false;

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
                currentStep: 3,
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
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppString.GENDER,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppString.WEIGHT,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                      isFemale = false;
                    });
                  },
                  child: reusableCategory(
                      'assets/images/male.png', 'Male', Icons.male, isMale),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFemale = true;
                      isMale = false;
                    });
                  },
                  child: reusableCategory('assets/images/feme.png', 'FeMale',
                      Icons.female, isFemale),
                )),
              ],
            )
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
                        MaterialPageRoute(builder: (_) => AgeSelector()));
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

  Widget reusableCategory(
      String imageadd, String text, IconData icon, bool isChecked) {
    return Container(
        height: 105,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
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
        child: Column(children: [
          // This container is needed only to set the overall stack height
          // for Text to be a bit below Circleavatar
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 30,
                ),
                radius: 25,
                backgroundColor: Colors.black12,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
            ),
          ),
        ]));
  }
}
