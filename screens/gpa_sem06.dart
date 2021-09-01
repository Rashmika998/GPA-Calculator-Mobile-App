import 'package:first_app/screens/civil/gpa_sem06.dart';
import 'package:first_app/screens/computer/gpa_sem06.dart';
import 'package:first_app/screens/electrical/gpa_sem06.dart';
import 'package:first_app/screens/mechanical/gpa_sem06.dart';
import 'package:flutter/material.dart';

class Dep6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Select the Department",
            style: TextStyle(fontSize: 25.0),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.location_city_sharp),
                title: Text("Civil Engineering"),
                subtitle: Text("Click to calculate GPA"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GPACivilSem06()));
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.computer),
                title: Text("Computer Engineering"),
                subtitle: Text("Click to calculate GPA"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GPAComSem06()));
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.electrical_services),
                title: Text("Electrical and Electronic Engineering"),
                subtitle: Text("Click to calculate GPA"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GPAElecSem06()));
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.build_outlined),
                title: Text("Mechanical Engineering"),
                subtitle: Text("Click to calculate GPA"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GPAMechSem06()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
