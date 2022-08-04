import 'package:fitness_app/Pages/Details/citylanguage.dart';
import 'package:fitness_app/utils/string_utils.dart';
import 'package:fitness_app/widgets/reusablewigi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class NamePage extends StatefulWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
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
                    currentStep: 1,
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
                    AppString.WELCOME,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  AppString.STEP,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                Text(
                  AppString.DETAILS,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                Text(
                  AppString.JOURNEY,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            floatingLabelAlignment:
                                FloatingLabelAlignment.center,
                            border: OutlineInputBorder(),
                            labelText: 'Enter Your Name ',
                            hintText: 'Raj Kumar'),
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
                  Container(
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
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
                          MaterialPageRoute(builder: (_) => CityLangPage()));
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
        ));
  }
}
