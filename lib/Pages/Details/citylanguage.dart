import 'package:fitness_app/Pages/Details/selectgender.dart';
import 'package:fitness_app/utils/string_utils.dart';
import 'package:fitness_app/widgets/reusablewigi.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CityLangPage extends StatefulWidget {
  const CityLangPage({Key? key}) : super(key: key);

  @override
  State<CityLangPage> createState() => _CityLangPageState();
}

class _CityLangPageState extends State<CityLangPage> {
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
                currentStep: 2,
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
                AppString.WHERE,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppString.PERSONALIZE,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            reusableSelector('Jaipur', Icons.close),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppString.LANGUAGE,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                AppString.COMMUNICATE,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            const Text(
              AppString.Effectively,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            reusableSelector('English', Icons.keyboard_arrow_down_outlined)
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
                        MaterialPageRoute(builder: (_) => Select_Gender()));
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
}
