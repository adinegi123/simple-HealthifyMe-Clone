import 'package:flutter/material.dart';

import '../../../utils/string_utils.dart';

class Terms_and_Conditions extends StatefulWidget {
  const Terms_and_Conditions({Key? key}) : super(key: key);

  @override
  State<Terms_and_Conditions> createState() => _Terms_and_ConditionsState();
}

class _Terms_and_ConditionsState extends State<Terms_and_Conditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
            child: Text(
          'Privacy Policy',
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 50,
                  ),
                  child: Image.asset(
                    'assets/images/hh.png',
                    height: 40,
                    color: Colors.red,
                  ),
                ),
                Text(
                  'Healthify Me',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Center(
                child: Container(
                    padding: EdgeInsets.all(13),
                    child: Text(
                      AppString.PRIVACY_POLICY_PARA_TWO,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ))),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
