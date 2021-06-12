import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mustodo/pages/welcome.dart';

class HomeHomePage extends StatefulWidget {
  @override
  _HomeHomePageState createState() => _HomeHomePageState();
}

class _HomeHomePageState extends State<HomeHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 4.3,
                width: MediaQuery.of(context).size.width / 1.2,
                child: Carousel(
                  images: [
                    AssetImage("images/SlideImage.jpg"),
                    AssetImage("images/SlideImage.jpg"),
                    AssetImage("images/SlideImage.jpg"),
                  ],
                  showIndicator: true,
                  dotBgColor: Color(0xff0D6EFD),
                  borderRadius: false,
                  moveIndicatorFromBottom: 180.0,
                  noRadiusForIndicator: true,
                  overlayShadow: true,
                  overlayShadowColors: Color(0xff0D6EFD),
                  overlayShadowSize: 0.7,
                  radius: Radius.circular(30.0),
                ),
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
