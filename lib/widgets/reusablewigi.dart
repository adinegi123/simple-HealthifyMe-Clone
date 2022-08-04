import 'package:fitness_app/utils/app_color.dart';
import 'package:flutter/material.dart';

Widget reusableTextfield(
  String labeltext,
) {
  return Container(
    height: 30,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: TextField(
      style: TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        labelText: labeltext,
        labelStyle: TextStyle(color: Colors.grey),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.black)),
      ),
    ),
  );
}

Widget reusableSolidButton(String text) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.circular(25.0),
    ),
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    height: 50,
    width: double.infinity,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, letterSpacing: 2),
      ),
    ),
  );
}

Widget reusableSolidButtontwo(String text) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.lightGreen.withOpacity(0.1),
    ),
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    height: 50,
    width: double.infinity,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

Widget reusablebottomButton(String text) {
  return Container(
    height: 50,
    // margin: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.red,
    ),
    child: Center(
      child: Container(
        margin: EdgeInsets.only(left: 5),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget reusablebottomNextButtonspecial(String backtext, String Nexttext) {
  return Container(
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
                  backtext,
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
            Container(
              child: Center(
                child: Text(
                  Nexttext,
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
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
  );
}

Widget reusablebottomNextButton(String backtext, String Nexttext) {
  return Container(
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
            Container(
              child: Center(
                child: Text(
                  backtext,
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
            Container(
              child: Center(
                child: Text(
                  Nexttext,
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
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
  );
}

Widget reusableSelector(String text, IconData icon) {
  return Container(
    height: 50,
    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(7)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 17,
                color: Colors.black87,
                fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon),
        )
      ],
    ),
  );
}
