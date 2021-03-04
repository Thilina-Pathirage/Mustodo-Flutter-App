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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 500.0,
                child: Image(
                  width: 200.0,
                  image: AssetImage('images/MusToDo.png'),
                ),
              ),
             Container(
               child: Column(
                 children: <Widget>[
                   Container(
                     width: 300.0,
                     margin: EdgeInsets.all(10.0),
                     child: ButtonTheme(
                       minWidth: 200.0,
                       height: 60.0,
                       buttonColor: Colors.blue,
                       child: RaisedButton(
                         elevation: 10.0,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(22.0),
                         ),
                         onPressed: () {},
                         child: Row(
                           mainAxisSize: MainAxisSize.min,
                           children: <Widget>[
                             /*

                        Image.asset('images/mustodologilogo.png',
                          height: 30.0,
                          width: 30.0,
                        ),

                         */
                             Padding(
                               padding: EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
                               child: Text(
                                 "Login with Mustodo",
                                 style: TextStyle(fontWeight: FontWeight.bold,
                                     fontSize: 15.0
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
                     width: 300.0,
                     margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 50.0),
                     child: ButtonTheme(
                       minWidth: 200.0,
                       height: 60.0,
                       buttonColor: Colors.redAccent,
                       child: RaisedButton(
                         elevation: 10.0,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(22.0),
                         ),
                         onPressed: () {},
                         child: Row(
                           mainAxisSize: MainAxisSize.min,
                           children: <Widget>[
                             /*

                        Image.asset('images/mustodologilogo.png',
                          height: 30.0,
                          width: 30.0,
                        ),

                         */
                             Padding(
                               padding: EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
                               child: Text(
                                 "Login with Google",
                                 style: TextStyle(fontWeight: FontWeight.bold,
                                     fontSize: 15.0
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
             )

            ],
          ),
        ),
      ),
    );
  }
}
