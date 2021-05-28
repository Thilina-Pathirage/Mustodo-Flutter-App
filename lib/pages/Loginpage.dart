import 'package:flutter/material.dart';
import 'package:mustodo/pages/homepage.dart';
import 'package:mustodo/pages/welcome.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(seconds: 0),
                transitionsBuilder: (context, animation, animationTime, child) {
                  animation = CurvedAnimation(
                      parent: animation, curve: Curves.easeInCirc);
                  return ScaleTransition(
                    alignment: Alignment.center,
                    scale: animation,
                    child: child,
                  );
                },
                pageBuilder: (context, animation, animationTime) {
                  return WelcomePage();
                },
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
        //actionsIconTheme: ,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 9,
                ),
                Container(
                  child: Image.asset("images/MusToDo.png"),
                  width: MediaQuery.of(context).size.width / 1.6,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Container(
                  child: Text(
                    "Let's Manage Your Works!",
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      child: Text(
                        "Login in",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
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
                      hintText: "Password",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
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
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Color(0xff0D6EFD),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                Container(
                  child: Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Color(0xffFF3131),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
