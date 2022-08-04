import 'package:fitness_app/Pages/Bottomnavbar/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../utils/string_utils.dart';

class Medical_help extends StatefulWidget {
  const Medical_help({Key? key}) : super(key: key);

  @override
  State<Medical_help> createState() => _Medical_helpState();
}

class _Medical_helpState extends State<Medical_help> {
  String choice = 'yes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: StepProgressIndicator(
                  totalSteps: 11,
                  currentStep: 11,
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
              Center(
                child: Text(
                  AppString.NEED_HELP,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              Center(
                child: Text(
                  AppString.MEDICAL_CONDITIONS,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  AppString.CHOOSE,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              Center(
                child: Text(
                  AppString.MC,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              resuable_optionConytainer(AppString.WITH_ALL, 'no'),
              resuable_optionConytainer(AppString.BUT_CHOOSE, 'no'),
              resuable_optionConytainer(AppString.DONT_HELP, 'yes'),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 20,
                color: Colors.black12,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  AppString.PHILOSPHY,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.black12,
                      child: Image.asset(
                        'assets/images/arrow.png',
                        height: 25,
                        color: Colors.redAccent,
                      ),
                      minRadius: 25,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    AppString.ADDRESS,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Center(
                child: Text(
                  AppString.COMPREHENSIVE,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              Center(
                child: Text(
                  AppString.REVIEWING,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              Center(
                child: Text(
                  AppString.WEIGHT_LOSS,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.black12,
                      child: Image.asset(
                        'assets/images/heart.png',
                        height: 25,
                        color: Colors.redAccent,
                      ),
                      minRadius: 25,
                    ),
                  ),
                ),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => BottomBarHandlerPage()));
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

  Widget resuable_optionConytainer(String text, String strvalue) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, .2),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Radio(
              value: strvalue,
              activeColor: Colors.green,
              groupValue: choice,
              onChanged: (value) {
                setState(() {
                  choice = value.toString();
                });
              })
        ],
      ),
    );
  }
}
