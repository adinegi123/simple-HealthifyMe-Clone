import 'package:fitness_app/Pages/Sidebar/SideBarPages/privacy_policy.dart';
import 'package:fitness_app/Pages/Sidebar/SideBarPages/termsandconditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

import 'SideBarPages/about_us.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({Key? key}) : super(key: key);

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  margin: EdgeInsets.only(top: 25, left: 15, right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black12)),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/prman.jpg'),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_down_outlined),
                    title: Text('Raj Kumar'),
                    subtitle: Text('rajkumar@gmail.com'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin:
                    EdgeInsets.only(top: 40, left: 15, right: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  tileColor: Colors.white10,
                  leading: Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  tileColor: Colors.white10,
                  leading: Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Icon(
                        Icons.insert_emoticon,
                        color: Colors.black,
                      )),
                  title: Text(
                    'About Us',
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => About_UsPage()))
                  },
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  tileColor: Colors.white10,
                  leading: Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Privacy policy',
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Privacy_PolicyPage()))
                  },
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.file_copy_sharp,
                    color: Colors.black,
                  ),
                  title: Text('Terms & conditions',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold)),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Terms_and_Conditions()))
                  },
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 10, right: 20, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.support,
                      color: Colors.black,
                    ),
                    title: Text('Support',
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  title: Text('Logout',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold)),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
