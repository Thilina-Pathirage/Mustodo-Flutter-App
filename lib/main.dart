import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 350.0,
                margin: EdgeInsets.all(10.0),
                child: ButtonTheme(
                  minWidth: 200.0,
                  height: 50.0,
                  buttonColor: Colors.blue,
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('images/mustodologilogo.png',
                          height: 30.0,
                          width: 30.0,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 0, 50.0, 0),
                          child: Text(
                              "Login with Mustodo",
                            style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20.0
                            ),
                          ),
                        ),
                      ],
                    ),
                    textColor: Colors.white,
                  ),
                ),
              ),

              Container(
                width: 350.0,
                margin: EdgeInsets.all(10.0),
                child: ButtonTheme(
                  minWidth: 200.0,
                  height: 50.0,
                  buttonColor: Colors.red,
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('images/glogologinn.png',
                          height: 30.0,
                          width: 30.0,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(40.0, 0, 50.0, 0),
                          child: Text(
                            "Login with Google",
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 20.0
                            ),
                          ),
                        ),
                      ],
                    ),
                    textColor: Colors.white,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
