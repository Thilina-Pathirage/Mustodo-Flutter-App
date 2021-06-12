import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mustodo/pages/Loginpage.dart';
import 'package:mustodo/pages/home_in_home.dart';
import 'package:mustodo/pages/profile_page.dart';
import 'package:mustodo/pages/reminder_page.dart';
import 'package:mustodo/pages/welcome.dart';
import 'package:mustodo/widgets/bottomNavbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 1;
  Widget shouldLoadPage(int index) {
    if (index == 0) {
      return ReminderPage();
    } else if (index == 1) {
      return HomeHomePage();
    } else if (index == 2) {
      return ProfilePage();
    }
  }

  @override
  void initState() {
    super.initState();
    var currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
        backgroundColor: Color(0xff0D6EFD),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 4,
                blurRadius: 9,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainerBottomNav(Icons.timelapse, 0),
              buildContainerBottomNav(Icons.home, 1),
              buildContainerBottomNav(Icons.person, 2),
            ],
          ),
        ),
      ),
      body: shouldLoadPage(_selectedItemIndex),
    );
  }

  Widget buildContainerBottomNav(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: index == _selectedItemIndex ? Color(0xff0D6EFD) : Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: index == _selectedItemIndex
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    spreadRadius: 4,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.20),
                    spreadRadius: 4,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ],
        ),
        height: 40,
        width: 80,
        child: Icon(
          icon,
          color: index == _selectedItemIndex ? Colors.white : Color(0xff0D6EFD),
        ),
      ),
    );
  }
}
