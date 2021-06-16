import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';
import 'package:mustodo/animations/FadeAnimation.dart';
import 'package:mustodo/pages/home_in_home.dart';
import 'package:mustodo/pages/homepage.dart';

class AddNewProjectPage extends StatefulWidget {
  const AddNewProjectPage({Key key}) : super(key: key);

  @override
  _AddNewProjectPageState createState() => _AddNewProjectPageState();
}

class _AddNewProjectPageState extends State<AddNewProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back, // add custom icons also
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff0D6EFD),
        ),
        elevation: 0,
        title: Text(
          "Create New Project",
          style: TextStyle(color: Colors.black),
        ),
        //actionsIconTheme: ,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                FadeAnimation(
                  1.9,
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                        child: Text(
                          "Project Details",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 70,
                ),
                FadeAnimation(
                  1.8,
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 4,
                          blurRadius: 9,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextFormField(
                      //controller: _fnameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 15,
                          //bottom: 11,
                          top: 17,
                          right: 15,
                        ),
                        enabledBorder: InputBorder.none,
                        hintText: "Project Title",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                FadeAnimation(
                  1.7,
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 4,
                          blurRadius: 9,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextFormField(
                      //controller: _lnameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 15,
                          //bottom: 11,
                          top: 17,
                          right: 15,
                        ),
                        enabledBorder: InputBorder.none,
                        hintText: "Project Type",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                FadeAnimation(
                  1.5,
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                        child: Text(
                          "Project Deadline",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 70,
                ),
                FadeAnimation(
                  1.4,
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 4,
                          blurRadius: 9,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextFormField(
                      //controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 15,
                          //bottom: 11,
                          top: 17,
                          right: 15,
                        ),
                        enabledBorder: InputBorder.none,
                        hintText: "Date",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                FadeAnimation(
                  1.3,
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 4,
                          blurRadius: 9,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextFormField(
                      //controller: _passwordController,
                      //obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 15,
                          //bottom: 11,
                          top: 17,
                          right: 15,
                        ),
                        enabledBorder: InputBorder.none,
                        hintText: "Time",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                FadeAnimation(
                  1.1,
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.25),
                          spreadRadius: 4,
                          blurRadius: 9,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: MaterialButton(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        "Create",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Color(0xff0D6EFD),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => HomePage()),
                            (Route<dynamic> route) => false);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
