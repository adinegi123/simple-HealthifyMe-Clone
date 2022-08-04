import 'package:country_list_pick/country_list_pick.dart';
import 'package:fitness_app/Pages/auth/otp.dart';
import 'package:fitness_app/widgets/reusablewigi.dart';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    padding: EdgeInsets.symmetric(horizontal: 8),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Login Account',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Spacer(),
                  Container(
                    child: CountryListPick(
                        appBar: AppBar(
                          backgroundColor: Colors.black,
                          title: Text('Choisir un pays'),
                        ),
                        theme: CountryTheme(
                          isShowFlag: true,
                          isShowTitle: false,
                          isShowCode: false,
                          alphabetTextColor: Colors.black,
                          isDownIcon: false,
                          showEnglishName: true,
                        ),
                        // Set default value
                        initialSelection: '+91',
                        onChanged: (CountryCode) {
                          print(CountryCode?.name);
                          print(CountryCode?.flagUri);
                        },
                        // or
                        // initialSelection: 'US'

                        // Whether to allow the widget to set a custom UI overlay
                        useUiOverlay: true,
                        // Whether the country list should be wrapped in a SafeArea
                        useSafeArea: false),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Hello, Welcome back to your account',
              style: TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.symmetric(horizontal: 19),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              margin: EdgeInsets.only(bottom: 10, left: 5),
              child: Text(
                'Phone no.',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            height: 70,
            child: IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Enter Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26),
                ),
              ),
              onChanged: (phone) {
                print(phone.completeNumber);
              },
              onCountryChanged: (country) {
                print('Country changed to: ' + country.name);
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => OtpPage()));
              },
              child: reusableSolidButton('Request OTP')),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: <Widget>[
              Expanded(
                  child: Divider(
                color: Colors.grey,
              )),
              Text(
                "or Sign in with Google",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Divider(
                color: Colors.grey,
              )),
            ]),
          ),
          Signinbutton(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Text(
                  'Not Registered Yet?',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Create an Account',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )
        ]),
      ),
    ));
  }

  Widget Signinbutton() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 70, right: 20, bottom: 40),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, .2),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/google.png',
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: const Text(
              ' Google',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
