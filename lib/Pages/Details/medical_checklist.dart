import 'package:fitness_app/Pages/Details/medical_help.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../utils/string_utils.dart';

class Medical_checkList extends StatefulWidget {
  const Medical_checkList({Key? key}) : super(key: key);

  @override
  State<Medical_checkList> createState() => _Medical_checkListState();
}

class _Medical_checkListState extends State<Medical_checkList> {
  bool value_none = false;
  bool value_two = false;

  late String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: StepProgressIndicator(
                  totalSteps: 11,
                  currentStep: 10,
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
                  AppString.MEDICAL_CONDITION,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              Center(
                child: Text(
                  AppString.AWARE,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  AppString.GUIDE,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              Center(
                child: Text(
                  AppString.QUICKLY,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height: 30,
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 5),
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
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      value: value_none,
                      shape: CircleBorder(),
                      onChanged: (bool? value) {
                        setState(() {
                          this.value_none = value!;
                        });
                      },
                    ),
                    Text(
                      'None',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 20,
                  child: Divider(
                    endIndent: 1,
                  ),
                ),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    if (index == 0) {
                      text = 'Diabetes';
                    } else if (index == 1) {
                      text = 'Cholestrol';
                    } else if (index == 2) {
                      text = 'Tyre Type';
                    }
                    return Container(
                      height: 35,
                      margin: EdgeInsets.symmetric(horizontal: 5),
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
                      child: Center(
                          child: Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.green,
                            value: value_two,
                            shape: CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                this.value_two = value!;
                              });
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              text,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )),
                    );
                  },
                  itemCount: 2,
                ),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    if (index == 0) {
                      text = 'Hypertension';
                    } else if (index == 1) {
                      text = 'PCOS';
                    } else if (index == 2) {
                      text = 'Thyroid';
                    }
                    return Container(
                      height: 35,
                      margin: EdgeInsets.symmetric(horizontal: 5),
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
                      child: Center(
                          child: Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.green,
                            value: value_two,
                            shape: CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                this.value_two = value!;
                              });
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              text,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )),
                    );
                  },
                  itemCount: 3,
                ),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    if (index == 0) {
                      text = 'Physical injury';
                    } else if (index == 1) {
                      text = 'Excessive Stress/anxiety';
                    }

                    return Container(
                      height: 35,
                      margin: EdgeInsets.symmetric(horizontal: 5),
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
                      child: Center(
                          child: Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.green,
                            value: value_two,
                            shape: CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                this.value_two = value!;
                              });
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              text,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )),
                    );
                  },
                  itemCount: 2,
                ),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    if (index == 0) {
                      text = 'Sleep Issues';
                    } else if (index == 1) {
                      text = 'Depression';
                    } else if (index == 2) {
                      text = 'Tyre Type';
                    }
                    return Container(
                      height: 35,
                      margin: EdgeInsets.symmetric(horizontal: 5),
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
                      child: Center(
                          child: Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.green,
                            value: value_two,
                            shape: CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                this.value_two = value!;
                              });
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              text,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )),
                    );
                  },
                  itemCount: 2,
                ),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    if (index == 0) {
                      text = 'Anger Issues';
                    } else if (index == 1) {
                      text = 'Loneliness';
                    } else if (index == 2) {
                      text = 'Tyre Type';
                    }
                    return Container(
                      height: 35,
                      margin: EdgeInsets.symmetric(horizontal: 5),
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
                      child: Center(
                          child: Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.green,
                            value: value_two,
                            shape: CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                this.value_two = value!;
                              });
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              text,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )),
                    );
                  },
                  itemCount: 2,
                ),
              ),
              Container(
                height: 30,
                width: 200,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      value: value_two,
                      shape: CircleBorder(),
                      onChanged: (bool? value) {
                        setState(() {
                          this.value_two = value!;
                        });
                      },
                    ),
                    Text(
                      'Relationship Stress',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Medical_help()));
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
