import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mustodo/pages/welcome.dart';

class HomeHomePage extends StatefulWidget {
  @override
  _HomeHomePageState createState() => _HomeHomePageState();
  const HomeHomePage({Key key}) : super(key: key);
}

class _HomeHomePageState extends State<HomeHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> item = [
      //projectItem(icon, title)
      projectItem(
        Icons.file_copy,
        'This is a title of the TODO project',
        0,
        true,
      ),
      projectItem(
        Icons.shopping_bag,
        'This is a title of the TODO project',
        0,
        false,
      ),
      projectItem(
        Icons.card_travel_rounded,
        'This is a title of the TODO project',
        0,
        false,
      ),
      projectItem(
        Icons.shopping_cart_rounded,
        'This is a title of the TODO project',
        0,
        true,
      ),
      projectItem(
        Icons.shopping_bag,
        'This is a title of the TODO project',
        0,
        true,
      ),
      projectItem(
        Icons.train_rounded,
        'This is a title of the TODO project',
        0,
        false,
      ),

    ];
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

  Widget projectItem(IconData icon, String title, int index, bool status) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {}, // Handle your callback
        child: Ink(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 4,
                blurRadius: 9,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height / 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.height / 100),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff0D6EFD),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 30.0,
                      height: 30.0,
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.height / 70),
                    child: Container(
                      width: 100.0,
                      height: 35.0,
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.height / 70, right: MediaQuery.of(context).size.height / 70 ),
                    child: Container(
                        decoration: BoxDecoration(
                          color: status == true
                              ? Color(0xff0D6EFD)
                              : Color(0xffFF3131),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 30,
                        child: status == true
                            ? Center(
                              child: Text(
                                "Completed",
                                style:
                                    TextStyle(fontSize: 13, color: Colors.white),
                              ),
                            )
                            : Center(
                              child: Text(
                                "Pending",
                                style:
                                    TextStyle(fontSize: 13, color: Colors.white),
                              ),
                            )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
