import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mustodo/pages/Loginpage.dart';
import 'package:mustodo/pages/welcome.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 1.2,
              child: Carousel(
                images: [
                  NetworkImage(
                      'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                  NetworkImage(
                      'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                  NetworkImage(
                      'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg')
                ],
                showIndicator: false,
                borderRadius: false,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
                overlayShadow: true,
                overlayShadowColors: Color(0xff0D6EFD),
                overlayShadowSize: 0.7,
                radius: Radius.circular(30.0),
              ),
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
      ),
    );
  }
}
