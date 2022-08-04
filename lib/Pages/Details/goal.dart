import 'package:fitness_app/Pages/Details/medical_checklist.dart';
import 'package:fitness_app/widgets/reusablewigi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:timelines/timelines.dart';

import '../../utils/string_utils.dart';

class Goal_to_reach extends StatefulWidget {
  const Goal_to_reach({Key? key}) : super(key: key);

  @override
  State<Goal_to_reach> createState() => _Goal_to_reachState();
}

class _Goal_to_reachState extends State<Goal_to_reach> {
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
                  currentStep: 9,
                  size: 2,
                  selectedSize: 3,
                  selectedColor: Colors.red,
                  unselectedColor: Colors.grey,
                  roundedEdges: Radius.circular(15),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                AppString.REACH_GOAL,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Text(
                AppString.GOAL,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppString.COMMITMENT,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 100,
              ),
              Text('1.0 Kg',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
              Text('per week',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 40,
              ),
              time_line(),
              SizedBox(height: 180),
              reusableSolidButtontwo(
                  'You will reach your goal in about two months.')
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
                        MaterialPageRoute(builder: (_) => Medical_checkList()));
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

  Widget time_line() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 10, top: 10),
      height: 40,
      width: double.infinity,
      child: FixedTimeline(
        children: [
          DotIndicator(
            color: Colors.black12,
            size: 8,
          ),
          SizedBox(
            width: 100.0,
            child: SolidLineConnector(
              color: Colors.black12,
              endIndent: 0,
            ),
          ),
          DotIndicator(
            color: Colors.black12,
            size: 8,
          ),
          SizedBox(
            width: 100.0,
            child: SolidLineConnector(
              color: Colors.black12,
              endIndent: 0,
            ),
          ),
          DotIndicator(
            color: Colors.black12,
            size: 8,
          ),
          SizedBox(
            width: 100.0,
            child: SolidLineConnector(
              color: Colors.black12,
              endIndent: 0,
            ),
          ),
          DotIndicator(
            color: Colors.black,
          )
        ],
        direction: Axis.horizontal,
      ),
    );
  }
}
