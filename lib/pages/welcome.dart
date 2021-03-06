import 'package:flutter/material.dart';
import 'package:mustodo/animations/FadeAnimation.dart';
import 'package:mustodo/pages/Loginpage.dart';
import 'package:mustodo/pages/signuppage.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Container(
                child: FadeAnimation(
                  1,
                  Image.asset(
                    "images/MusToDo.png",
                    width: MediaQuery.of(context).size.width / 1.4,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              FadeAnimation(
                1.3,
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
                          builder: (context) => LoginPage(),
                        ),
                      );
                      // Navigator.pushReplacement(
                      //   context,
                      //   PageRouteBuilder(
                      //     transitionDuration: Duration(seconds: 1),
                      //     transitionsBuilder:
                      //         (context, animation, animationTime, child) {
                      //       animation = CurvedAnimation(
                      //           parent: animation, curve: Curves.elasticOut);
                      //       return ScaleTransition(
                      //         alignment: Alignment.center,
                      //         scale: animation,
                      //         child: child,
                      //       );
                      //     },
                      //     pageBuilder: (context, animation, animationTime) {
                      //       return LoginPage();
                      //     },
                      //   ),
                      // );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              FadeAnimation(
                1.9,
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
                      "Signup",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Color(0xffFF3131),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ),
                      );
                      // Navigator.pushReplacement(
                      //   context,
                      //   PageRouteBuilder(
                      //     transitionDuration: Duration(seconds: 1),
                      //     transitionsBuilder:
                      //         (context, animation, animationTime, child) {
                      //       animation = CurvedAnimation(
                      //           parent: animation, curve: Curves.elasticOut);
                      //       return ScaleTransition(
                      //         alignment: Alignment.center,
                      //         scale: animation,
                      //         child: child,
                      //       );
                      //     },
                      //     pageBuilder: (context, animation, animationTime) {
                      //       return SignupPage();
                      //     },
                      //   ),
                      // );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              FadeAnimation(
                2.2,
                Container(
                  child: Text(
                    "Login to manage TO DOs",
                    style: TextStyle(
                      color: Color(0xffFF3131),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
