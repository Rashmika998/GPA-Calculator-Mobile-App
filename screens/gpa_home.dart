import 'package:first_app/screens/gpa_sem01.dart';
import 'package:first_app/screens/gpa_sem02.dart';
import 'package:first_app/screens/gpa_sem03.dart';
import 'package:first_app/screens/gpa_sem05.dart';
import 'package:first_app/screens/gpa_sem07.dart';
import 'package:first_app/screens/gpa_sem08.dart';
import 'package:flutter/material.dart';

import 'gpa_sem04.dart';
import 'gpa_sem06.dart';

class GPAHome extends StatefulWidget {
  @override
  _GPAHomeState createState() => _GPAHomeState();
}

class _GPAHomeState extends State<GPAHome> {
  int _selectedIndex = 1;

  // ignore: non_constant_identifier_names
  void _OnItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Row(
                children: [
                  Text(
                    "GPA Calculator ",
                    style: TextStyle(fontSize: 25.0),
                  ),
                  Icon(Icons.school),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GPASem01(),
                        ));
                  },
                  child: Text(
                    "Semester 01",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GPASem02(),
                        ));
                  },
                  child: Text("Semester 02", style: TextStyle(fontSize: 25)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dep3()));
                  },
                  child: Text(
                    "Semester 03",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dep4()));
                  },
                  child: Text("Semester 04", style: TextStyle(fontSize: 25)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.indigo))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dep5()));
                  },
                  child: Text(
                    "Semester 05",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dep6()));
                  },
                  child: Text("Semester 06", style: TextStyle(fontSize: 25)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dep7()));
                  },
                  child: Text(
                    "Semester 07",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.indigo),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dep8()));
                  },
                  child: Text("Semester 08", style: TextStyle(fontSize: 25)),
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.indigo,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: 'Calculate',
                backgroundColor: Colors.indigo)
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.indigo,
          onTap: _OnItemTapped,
        ),
      ),
    );
  }
}
