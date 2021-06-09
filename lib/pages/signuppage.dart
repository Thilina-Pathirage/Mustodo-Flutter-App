import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mustodo/animations/FadeAnimation.dart';
import 'package:mustodo/pages/Loginpage.dart';
import 'package:mustodo/pages/homepage.dart';
import 'package:mustodo/pages/welcome.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomePage(),
              ),
            );
            // Navigator.pushReplacement(
            //   context,
            //   PageRouteBuilder(
            //     transitionDuration: Duration(seconds: 0),
            //     transitionsBuilder: (context, animation, animationTime, child) {
            //       animation = CurvedAnimation(
            //           parent: animation, curve: Curves.easeInCirc);
            //       return ScaleTransition(
            //         alignment: Alignment.center,
            //         scale: animation,
            //         child: child,
            //       );
            //     },
            //     pageBuilder: (context, animation, animationTime) {
            //       return WelcomePage();
            //     },
            //   ),
            // );
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
          "Create New Account",
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
                // FadeAnimation(
                //   1.9,
                //   Container(
                //     width: MediaQuery.of(context).size.width / 1.3,
                //     child: Align(
                //       alignment: AlignmentDirectional.topStart,
                //       child: Container(
                //         child: Text(
                //           "Personal Details",
                //           style: TextStyle(
                //               fontSize: 18.0, fontWeight: FontWeight.bold),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height / 70,
                // ),
                // FadeAnimation(
                //   1.8,
                //   Container(
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10.0),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.25),
                //           spreadRadius: 4,
                //           blurRadius: 9,
                //           offset: Offset(0, 3), // changes position of shadow
                //         ),
                //       ],
                //     ),
                //     height: MediaQuery.of(context).size.height / 14,
                //     width: MediaQuery.of(context).size.width / 1.3,
                //     child: TextFormField(
                //       controller: _fnameController,
                //       decoration: InputDecoration(
                //         border: InputBorder.none,
                //         contentPadding: EdgeInsets.only(
                //           left: 15,
                //           //bottom: 11,
                //           top: 17,
                //           right: 15,
                //         ),
                //         enabledBorder: InputBorder.none,
                //         hintText: "First Name",
                //         floatingLabelBehavior: FloatingLabelBehavior.always,
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height / 30,
                // ),
                // FadeAnimation(
                //   1.7,
                //   Container(
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10.0),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.25),
                //           spreadRadius: 4,
                //           blurRadius: 9,
                //           offset: Offset(0, 3), // changes position of shadow
                //         ),
                //       ],
                //     ),
                //     height: MediaQuery.of(context).size.height / 14,
                //     width: MediaQuery.of(context).size.width / 1.3,
                //     child: TextFormField(
                //       controller: _lnameController,
                //       decoration: InputDecoration(
                //         border: InputBorder.none,
                //         contentPadding: EdgeInsets.only(
                //           left: 15,
                //           //bottom: 11,
                //           top: 17,
                //           right: 15,
                //         ),
                //         enabledBorder: InputBorder.none,
                //         hintText: "Last Name",
                //         floatingLabelBehavior: FloatingLabelBehavior.always,
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height / 30,
                // ),
                // FadeAnimation(
                //   1.6,
                //   Container(
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10.0),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.25),
                //           spreadRadius: 4,
                //           blurRadius: 9,
                //           offset: Offset(0, 3), // changes position of shadow
                //         ),
                //       ],
                //     ),
                //     height: MediaQuery.of(context).size.height / 14,
                //     width: MediaQuery.of(context).size.width / 1.3,
                //     child: TextFormField(
                //       controller: _titleController,
                //       decoration: InputDecoration(
                //         border: InputBorder.none,
                //         contentPadding: EdgeInsets.only(
                //           left: 15,
                //           //bottom: 11,
                //           top: 17,
                //           right: 15,
                //         ),
                //         enabledBorder: InputBorder.none,
                //         hintText: "Title",
                //         floatingLabelBehavior: FloatingLabelBehavior.always,
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height / 20,
                // ),

                FadeAnimation(
                  1.9,
                  Container(
                    child: Image.asset("images/MusToDo.png"),
                    width: MediaQuery.of(context).size.width / 1.6,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                FadeAnimation(
                  1.9,
                  Container(
                    child: Text(
                      "Let's Manage Your Works!",
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                ),
                FadeAnimation(
                  1.8,
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Container(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                // FadeAnimation(
                //   1.5,
                //   Container(
                //     width: MediaQuery.of(context).size.width / 1.3,
                //     child: Align(
                //       alignment: AlignmentDirectional.topStart,
                //       child: Container(
                //         child: Text(
                //           "Login Details",
                //           style: TextStyle(
                //               fontSize: 18.0, fontWeight: FontWeight.bold),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height / 70,
                // ),
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
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 15,
                          //bottom: 11,
                          top: 17,
                          right: 15,
                        ),
                        enabledBorder: InputBorder.none,
                        hintText: "Email",
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
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 15,
                          //bottom: 11,
                          top: 17,
                          right: 15,
                        ),
                        enabledBorder: InputBorder.none,
                        hintText: "Password",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                FadeAnimation(
                  1.2,
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
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 15,
                          //bottom: 11,
                          top: 17,
                          right: 15,
                        ),
                        enabledBorder: InputBorder.none,
                        hintText: "Confirm Password",
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
                      onPressed: () async {
                        await _firebaseAuth
                            .createUserWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text,
                            )
                            .then((value) => FirebaseAuth.instance.signOut())
                            .then(
                              (value) => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              ),
                            );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                FadeAnimation(
                  1,
                  Container(
                    child: Text(
                      "Alrady have an account?",
                      style: TextStyle(
                        color: Color(0xffFF3131),
                      ),
                    ),
                  ),
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
