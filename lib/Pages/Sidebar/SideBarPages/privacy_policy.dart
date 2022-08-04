import 'package:fitness_app/utils/string_utils.dart';
import 'package:flutter/material.dart';

class Privacy_PolicyPage extends StatefulWidget {
  const Privacy_PolicyPage({Key? key}) : super(key: key);

  @override
  State<Privacy_PolicyPage> createState() => _Privacy_PolicyPageState();
}

class _Privacy_PolicyPageState extends State<Privacy_PolicyPage> {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Container(
                        padding: EdgeInsets.all(13),
                        child: Text(
                          AppString.PRIVACY_POLICY_PARA_ONE,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ))),
                Center(
                    child: Container(
                        padding: EdgeInsets.all(13),
                        child: Text(
                          AppString.PRIVACY_POLICY_PARA_TWO,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ))),
                Center(
                    child: Container(
                        padding: EdgeInsets.all(13),
                        child: Text(
                          AppString.PRIVACY_POLICY_PARA_THREE,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
