import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedItemIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              spreadRadius: 4,
              blurRadius: 9,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildContainerBottomNav(Icons.timelapse, 0),
            buildContainerBottomNav(Icons.home, 1),
            buildContainerBottomNav(Icons.person, 2),
          ],
        ),
      ),
    );
  }

  Widget buildContainerBottomNav(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: index == _selectedItemIndex ? Color(0xff0D6EFD) : Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: index == _selectedItemIndex
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 4,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ],
        ),
        height: 40,
        width: 80,
        child: Icon(
          icon,
          color: index == _selectedItemIndex ? Colors.white : Color(0xff0D6EFD),
        ),
      ),
    );
  }
}
