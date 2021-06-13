import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mustodo/pages/welcome.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("Profile Page"),
          ),
          Container(
            child: MaterialButton(
              child: Text("Logout"),
              onPressed: () async {
                await FirebaseAuth.instance.signOut().then(
                      (value) => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomePage(),
                        ),
                      ),
                    );
              },
            ),
          )
        ],
      ),
    );
  }
}
