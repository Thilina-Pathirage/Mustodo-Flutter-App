import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mustodo/pages/welcome.dart';

class HomeHomePage extends StatefulWidget {
  @override
  _HomeHomePageState createState() => _HomeHomePageState();
  const HomeHomePage({Key key}) : super(key: key);
}

class _HomeHomePageState extends State<HomeHomePage> {
  List<Widget> item = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0xff0D6EFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
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
        new Expanded(
          child: Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
              child: GridView.builder(
                itemCount: item.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0),
                itemBuilder: (BuildContext context, int index) {
                  return item[index];
                },
              )),
        ),
      ],
    );
  }
}
