import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';
import 'package:mustodo/pages/Loginpage.dart';
import 'package:mustodo/pages/addnew_peoject.dart';
import 'package:mustodo/pages/home_in_home.dart';
import 'package:mustodo/pages/profile_page.dart';
import 'package:mustodo/pages/reminder_page.dart';
import 'package:mustodo/pages/stat_page.dart';
// import 'package:mustodo/pages/welcome.dart';
// import 'package:mustodo/widgets/bottomNavbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 0;

  List pageList = [
    HomeHomePage(),
    StatPage(),
    ReminderPage(),
    ProfilePage(),
  ];

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
      //backgroundColor: Colors.amber,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
        child: Container(
          child: FloatingActionButton(
            elevation: 0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddNewProjectPage(),
                ),
              );
            },
            child: const Icon(Icons.add),
            backgroundColor: Color(0xff0D6EFD),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [
              BoxShadow(
                color: Color(0xff0D6EFD).withOpacity(0.45),
                spreadRadius: 4,
                blurRadius: 15,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 10,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(20),
            //   topRight: Radius.circular(20),
            // ),
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
              buildContainerBottomNav(Icons.home, 0),
              buildContainerBottomNav(Icons.bar_chart, 1),
              SizedBox(
                width: 30.0,
              ),
              buildContainerBottomNav(Icons.timelapse, 2),
              buildContainerBottomNav(Icons.person, 3),
            ],
          ),
        ),
      ),
      body: pageList[_selectedItemIndex],
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
          color: index == _selectedItemIndex
              ? Color(0xff0D6EFD)
              : Colors.grey[400],
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
              : [],
        ),
        height: 45,
        width: 45,
        child: Icon(
          icon,
          color: index == _selectedItemIndex ? Colors.white : Colors.white,
        ),
      ),
    );
  }
}
