import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                height: MediaQuery.of(context).size.height / 11,
              ),
              Container(
                child: Image.asset(
                  "images/MusToDo.png",
                  width: MediaQuery.of(context).size.width / 1.4,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 13,
                width: MediaQuery.of(context).size.width / 1.3,
                child: MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
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
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 13,
                width: MediaQuery.of(context).size.width / 1.3,
                child: MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
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
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
