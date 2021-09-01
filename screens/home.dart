import 'package:first_app/screens/gpa_sem07.dart';
import 'package:first_app/screens/gpa_sem08.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'global.dart' as globals;

import 'gpa_sem01.dart';
import 'gpa_sem02.dart';
import 'gpa_sem03.dart';
import 'gpa_sem04.dart';
import 'gpa_sem05.dart';
import 'gpa_sem06.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Home());
  }
}

// ignore: must_be_immutable
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  // ignore: non_constant_identifier_names
  double overall_gpa = 0,
      sem01 = 0,
      sem02 = 0,
      sem03 = 0,
      sem04 = 0,
      sem05 = 0,
      sem06 = 0,
      sem07 = 0,
      sem08 = 0;
  double total = 0;
  int credits = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadGPA();
  }

  void _loadGPA() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      total = (prefs.getDouble('Total' ?? 0));
      credits = (prefs.getInt('Credits' ?? 0));
      overall_gpa = (prefs.getDouble('GPA' ?? 0));
      sem01 = (prefs.getDouble('Sem01' ?? 0));
      sem02 = (prefs.getDouble('Sem02' ?? 0));
      sem03 = (prefs.getDouble('Sem03' ?? 0));
      sem04 = (prefs.getDouble('Sem04' ?? 0));
      sem05 = (prefs.getDouble('Sem05' ?? 0));
      sem06 = (prefs.getDouble('Sem06' ?? 0));
      sem07 = (prefs.getDouble('Sem07' ?? 0));
      sem08 = (prefs.getDouble('Sem08' ?? 0));

      globals.sem01Total = (prefs.getDouble('Total1' ?? 0));
      globals.sem02Total = (prefs.getDouble('Total2' ?? 0));
      globals.sem03Total = (prefs.getDouble('Total3' ?? 0));
      globals.sem04Total = (prefs.getDouble('Total4' ?? 0));
      globals.sem05Total = (prefs.getDouble('Total5' ?? 0));
      globals.sem06Total = (prefs.getDouble('Total6' ?? 0));
      globals.sem07Total = (prefs.getDouble('Total7' ?? 0));
      globals.sem08Total = (prefs.getDouble('Total8' ?? 0));

      globals.sem01Credits = (prefs.getInt('Credits1' ?? 0));
      globals.sem02Credits = (prefs.getInt('Credits2' ?? 0));
      globals.sem03Credits = (prefs.getInt('Credits3' ?? 0));
      globals.sem04Credits = (prefs.getInt('Credits4' ?? 0));
      globals.sem05Credits = (prefs.getInt('Credits5' ?? 0));
      globals.sem06Credits = (prefs.getInt('Credits6' ?? 0));
      globals.sem07Credits = (prefs.getInt('Credits7' ?? 0));
      globals.sem08Credits = (prefs.getInt('Credits8' ?? 0));
    });
  }

  // ignore: unused_element
  void _saveGPA(int sem, double tempTotal, int tempCredits) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      if (sem == 1 && !globals.sem01Updated) {
        globals.sem01Updated = true;
        prefs.setBool('Update01', globals.sem01Updated);
        total = (prefs.getDouble('Total') ?? 0) + tempTotal;
        prefs.setDouble('Total', total);
        prefs.setDouble('Total1', globals.sem01Total);
        credits = (prefs.getInt('Credits') ?? 0) + tempCredits;
        prefs.setInt('Credits', credits);
        prefs.setInt('Credits1', globals.sem01Credits);

        sem01 = globals.sem01Total / globals.sem01Credits;
        prefs.setDouble('Sem01', sem01);

        if (total == 0) {
          overall_gpa = 0;
          prefs.setDouble('GPA', overall_gpa);
        } else {
          overall_gpa = total / credits;
          prefs.setDouble('GPA', overall_gpa);
        }
      } else if (sem == 2 && !globals.sem02Updated) {
        globals.sem02Updated = true;
        prefs.setBool('Update02', globals.sem02Updated);
        total = (prefs.getDouble('Total') ?? 0) + tempTotal;
        prefs.setDouble('Total', total);
        prefs.setDouble('Total2', globals.sem02Total);
        credits = (prefs.getInt('Credits') ?? 0) + tempCredits;
        prefs.setInt('Credits', credits);
        prefs.setInt('Credits2', globals.sem02Credits);

        sem02 = globals.sem02Total / globals.sem02Credits;
        prefs.setDouble('Sem02', sem02);

        if (total == 0) {
          overall_gpa = 0;
          prefs.setDouble('GPA', overall_gpa);
        } else {
          overall_gpa = total / credits;
          prefs.setDouble('GPA', overall_gpa);
        }
      } else if (sem == 3 && !globals.sem03Updated) {
        globals.sem03Updated = true;
        prefs.setBool('Update03', globals.sem03Updated);
        total = (prefs.getDouble('Total') ?? 0) + tempTotal;
        prefs.setDouble('Total', total);
        prefs.setDouble('Total3', globals.sem03Total);
        credits = (prefs.getInt('Credits') ?? 0) + tempCredits;
        prefs.setInt('Credits', credits);
        prefs.setInt('Credits3', globals.sem03Credits);

        sem03 = globals.sem03Total / globals.sem03Credits;
        prefs.setDouble('Sem03', sem03);

        if (total == 0) {
          overall_gpa = 0;
          prefs.setDouble('GPA', overall_gpa);
        } else {
          overall_gpa = total / credits;
          prefs.setDouble('GPA', overall_gpa);
        }
      } else if (sem == 4 && !globals.sem04Updated) {
        globals.sem04Updated = true;
        prefs.setBool('Update04', globals.sem04Updated);
        total = (prefs.getDouble('Total') ?? 0) + tempTotal;
        prefs.setDouble('Total', total);
        prefs.setDouble('Total4', globals.sem04Total);
        credits = (prefs.getInt('Credits') ?? 0) + tempCredits;
        prefs.setInt('Credits', credits);
        prefs.setInt('Credits4', globals.sem04Credits);

        sem04 = globals.sem04Total / globals.sem04Credits;
        prefs.setDouble('Sem04', sem04);

        if (total == 0) {
          overall_gpa = 0;
          prefs.setDouble('GPA', overall_gpa);
        } else {
          overall_gpa = total / credits;
          prefs.setDouble('GPA', overall_gpa);
        }
      } else if (sem == 5 && !globals.sem05Updated) {
        globals.sem05Updated = true;
        prefs.setBool('Update05', globals.sem05Updated);
        total = (prefs.getDouble('Total') ?? 0) + tempTotal;
        prefs.setDouble('Total', total);
        prefs.setDouble('Total5', globals.sem05Total);
        credits = (prefs.getInt('Credits') ?? 0) + tempCredits;
        prefs.setInt('Credits', credits);
        prefs.setInt('Credits5', globals.sem05Credits);

        sem05 = globals.sem05Total / globals.sem05Credits;
        prefs.setDouble('Sem05', sem05);

        if (total == 0) {
          overall_gpa = 0;
          prefs.setDouble('GPA', overall_gpa);
        } else {
          overall_gpa = total / credits;
          prefs.setDouble('GPA', overall_gpa);
        }
      } else if (sem == 6 && !globals.sem06Updated) {
        globals.sem06Updated = true;
        prefs.setBool('Update06', globals.sem06Updated);
        total = (prefs.getDouble('Total') ?? 0) + tempTotal;
        prefs.setDouble('Total', total);
        prefs.setDouble('Total6', globals.sem06Total);
        credits = (prefs.getInt('Credits') ?? 0) + tempCredits;
        prefs.setInt('Credits', credits);
        prefs.setInt('Credits6', globals.sem06Credits);

        sem06 = globals.sem06Total / globals.sem06Credits;
        prefs.setDouble('Sem06', sem06);

        if (total == 0) {
          overall_gpa = 0;
          prefs.setDouble('GPA', overall_gpa);
        } else {
          overall_gpa = total / credits;
          prefs.setDouble('GPA', overall_gpa);
        }
      } else if (sem == 7 && !globals.sem07Updated) {
        globals.sem07Updated = true;
        prefs.setBool('Update07', globals.sem07Updated);
        total = (prefs.getDouble('Total') ?? 0) + tempTotal;
        prefs.setDouble('Total', total);
        prefs.setDouble('Total7', globals.sem07Total);
        credits = (prefs.getInt('Credits') ?? 0) + tempCredits;
        prefs.setInt('Credits', credits);
        prefs.setInt('Credits7', globals.sem07Credits);

        sem07 = globals.sem07Total / globals.sem07Credits;
        prefs.setDouble('Sem07', sem07);

        if (total == 0) {
          overall_gpa = 0;
          prefs.setDouble('GPA', overall_gpa);
        } else {
          overall_gpa = total / credits;
          prefs.setDouble('GPA', overall_gpa);
        }
      } else if (sem == 8 && !globals.sem08Updated) {
        globals.sem08Updated = true;
        prefs.setBool('Update08', globals.sem08Updated);
        total = (prefs.getDouble('Total') ?? 0) + tempTotal;
        prefs.setDouble('Total', total);
        prefs.setDouble('Total8', globals.sem08Total);
        credits = (prefs.getInt('Credits') ?? 0) + tempCredits;
        prefs.setInt('Credits', credits);
        prefs.setInt('Credits8', globals.sem08Credits);

        sem08 = globals.sem08Total / globals.sem08Credits;
        prefs.setDouble('Sem08', sem08);

        if (total == 0) {
          overall_gpa = 0;
          prefs.setDouble('GPA', overall_gpa);
        } else {
          overall_gpa = total / credits;
          prefs.setDouble('GPA', overall_gpa);
        }
      }
    });
  }

  void _removeGPA() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.remove('Total');
      prefs.remove('Credits');
      prefs.remove('GPA');
      prefs.remove('Sem01');
      prefs.remove('Sem02');
      prefs.remove('Sem03');
      prefs.remove('Sem04');
      prefs.remove('Sem05');
      prefs.remove('Sem06');
      prefs.remove('Sem07');
      prefs.remove('Sem08');

      total = 0.000;
      credits = 0;
      overall_gpa = 0.000;
      sem01 = 0.000;
      sem02 = 0.000;
      sem03 = 0.000;
      sem04 = 0.000;
      sem05 = 0.000;
      sem06 = 0.000;
      sem07 = 0.000;
      sem08 = 0.000;
      prefs.setInt('Credits', 0);
      prefs.setDouble('Total', 0);
      prefs.setDouble('GPA', 0);
      prefs.setDouble('Sem01', 0);
      prefs.setDouble('Sem02', 0);
      prefs.setDouble('Sem03', 0);
      prefs.setDouble('Sem04', 0);
      prefs.setDouble('Sem05', 0);
      prefs.setDouble('Sem06', 0);
      prefs.setDouble('Sem07', 0);
      prefs.setDouble('Sem08', 0);

      globals.sem01Total = 0;
      globals.sem02Total = 0;
      globals.sem03Total = 0;
      globals.sem04Total = 0;
      globals.sem05Total = 0;
      globals.sem06Total = 0;
      globals.sem07Total = 0;
      globals.sem08Total = 0;

      prefs.setDouble('Total1', 0);
      prefs.setDouble('Total2', 0);
      prefs.setDouble('Total3', 0);
      prefs.setDouble('Total4', 0);
      prefs.setDouble('Total5', 0);
      prefs.setDouble('Total6', 0);
      prefs.setDouble('Total7', 0);
      prefs.setDouble('Total8', 0);

      globals.sem01Credits = 0;
      globals.sem02Credits = 0;
      globals.sem03Credits = 0;
      globals.sem04Credits = 0;
      globals.sem05Credits = 0;
      globals.sem06Credits = 0;
      globals.sem07Credits = 0;
      globals.sem08Credits = 0;

      prefs.setInt('Credits1', 0);
      prefs.setInt('Credits2', 0);
      prefs.setInt('Credits3', 0);
      prefs.setInt('Credits4', 0);
      prefs.setInt('Credits5', 0);
      prefs.setInt('Credits6', 0);
      prefs.setInt('Credits7', 0);
      prefs.setInt('Credits8', 0);

      globals.sem01Updated = false;
      prefs.setBool('Update01', globals.sem01Updated);
      globals.sem02Updated = false;
      prefs.setBool('Update02', globals.sem02Updated);
      globals.sem03Updated = false;
      prefs.setBool('Update03', globals.sem03Updated);
      globals.sem04Updated = false;
      prefs.setBool('Update04', globals.sem04Updated);
      globals.sem05Updated = false;
      prefs.setBool('Update05', globals.sem05Updated);
      globals.sem06Updated = false;
      prefs.setBool('Update06', globals.sem06Updated);
      globals.sem07Updated = false;
      prefs.setBool('Update07', globals.sem07Updated);
      globals.sem08Updated = false;
      prefs.setBool('Update08', globals.sem08Updated);
    });
  }

  void _removeGPASem(int sem, double tempTotal, int tempCredits) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      if (tempTotal != 0) {
        total = (prefs.getDouble('Total') ?? 0) - tempTotal;
        prefs.setDouble('Total', total);
        credits = (prefs.getInt('Credits') ?? 0) - tempCredits;
        prefs.setInt('Credits', credits);

        if (total == 0) {
          overall_gpa = 0.000;
          prefs.setDouble('GPA', overall_gpa);
        }
        overall_gpa = total / credits;
        prefs.setDouble('GPA', overall_gpa);

        if (sem == 1) {
          prefs.remove('Sem01');
          sem01 = 0.000;
          prefs.remove('Total1');
          globals.sem01Total = 0;
          prefs.remove('Credits1');
          globals.sem01Credits = 0;
          globals.sem01Updated = false;
          prefs.setBool('Update01', globals.sem01Updated);
        } else if (sem == 2) {
          prefs.remove('Sem02');
          sem02 = 0.000;
          prefs.remove('Total2');
          globals.sem02Total = 0;
          prefs.remove('Credits2');
          globals.sem02Credits = 0;
          globals.sem02Updated = false;
          prefs.setBool('Update02', globals.sem02Updated);
        } else if (sem == 3) {
          prefs.remove('Sem03');
          sem03 = 0.000;
          prefs.remove('Total3');
          globals.sem03Total = 0;
          prefs.remove('Credits3');
          globals.sem03Credits = 0;
          globals.sem03Updated = false;
          prefs.setBool('Update03', globals.sem03Updated);
        } else if (sem == 4) {
          prefs.remove('Sem04');
          sem04 = 0.000;
          prefs.remove('Total4');
          globals.sem04Total = 0;
          prefs.remove('Credits4');
          globals.sem04Credits = 0;
          globals.sem04Updated = false;
          prefs.setBool('Update04', globals.sem04Updated);
        } else if (sem == 5) {
          prefs.remove('Sem05');
          sem05 = 0.000;
          prefs.remove('Total5');
          globals.sem05Total = 0;
          prefs.remove('Credits5');
          globals.sem05Credits = 0;
          globals.sem05Updated = false;
          prefs.setBool('Update05', globals.sem05Updated);
        } else if (sem == 6) {
          prefs.remove('Sem06');
          sem06 = 0.000;
          prefs.remove('Total6');
          globals.sem06Total = 0;
          prefs.remove('Credits6');
          globals.sem06Credits = 0;
          globals.sem06Updated = false;
          prefs.setBool('Update06', globals.sem06Updated);
        } else if (sem == 7) {
          prefs.remove('Sem07');
          sem07 = 0.000;
          prefs.remove('Total7');
          globals.sem07Total = 0;
          prefs.remove('Credits7');
          globals.sem07Credits = 0;
          globals.sem07Updated = false;
          prefs.setBool('Update07', globals.sem07Updated);
        } else if (sem == 8) {
          prefs.remove('Sem08');
          sem08 = 0.000;
          prefs.remove('Total8');
          globals.sem08Total = 0;
          prefs.remove('Credits8');
          globals.sem08Credits = 0;
          globals.sem08Updated = false;
          prefs.setBool('Update08', globals.sem08Updated);
        }
      }
    });
  }

  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Card(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: overall_gpa != null
                          ? Text(
                              "Overall GPA: " + overall_gpa.toStringAsFixed(3),
                              style: TextStyle(fontSize: 30.0),
                            )
                          : Text(
                              "0.000",
                              style: TextStyle(fontSize: 30.0),
                            ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.indigo,
                          child: Icon(Icons.delete),
                          onPressed: () {
                            _removeGPA();
                          },
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Click the bin button to delete your overall GPA",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("Semester 01 "),
                    leading: IconButton(
                      color: Colors.indigo,
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _saveGPA(1, globals.sem01Total, globals.sem01Credits);
                      },
                    ),
                    trailing: IconButton(
                      color: Colors.red,
                      icon: Icon(Icons.auto_delete_rounded),
                      onPressed: () {
                        _removeGPASem(
                            1, globals.sem01Total, globals.sem01Credits);
                      },
                    ),
                    subtitle: sem01 != null
                        ? sem01 >= 3.8
                            ? Text(
                                "GPA - " +
                                    sem01.toStringAsFixed(3) +
                                    " - Deans List",
                                style: TextStyle(color: Colors.indigo))
                            : Text("GPA - " + sem01.toStringAsFixed(3))
                        : Text(
                            "0.000",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GPASem01()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Semester 02 "),
                    leading: IconButton(
                      color: Colors.indigo,
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _saveGPA(2, globals.sem02Total, globals.sem02Credits);
                      },
                    ),
                    trailing: IconButton(
                      color: Colors.red,
                      icon: Icon(Icons.auto_delete_rounded),
                      onPressed: () {
                        _removeGPASem(
                            2, globals.sem02Total, globals.sem02Credits);
                      },
                    ),
                    subtitle: sem02 != null
                        ? sem02 >= 3.8
                            ? Text(
                                "GPA - " +
                                    sem02.toStringAsFixed(3) +
                                    " - Deans List",
                                style: TextStyle(color: Colors.indigo))
                            : Text("GPA - " + sem02.toStringAsFixed(3))
                        : Text(
                            "0.000",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GPASem02()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Semester 03 "),
                    leading: IconButton(
                      color: Colors.indigo,
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _saveGPA(3, globals.sem03Total, globals.sem03Credits);
                      },
                    ),
                    trailing: IconButton(
                      color: Colors.red,
                      icon: Icon(Icons.auto_delete_rounded),
                      onPressed: () {
                        _removeGPASem(
                            3, globals.sem03Total, globals.sem03Credits);
                      },
                    ),
                    subtitle: sem03 != null
                        ? sem03 >= 3.8
                            ? Text(
                                "GPA - " +
                                    sem03.toStringAsFixed(3) +
                                    " - Deans List",
                                style: TextStyle(color: Colors.indigo))
                            : Text("GPA - " + sem03.toStringAsFixed(3))
                        : Text(
                            "0.000",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dep3()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Semester 04 "),
                    leading: IconButton(
                      color: Colors.indigo,
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _saveGPA(4, globals.sem04Total, globals.sem04Credits);
                      },
                    ),
                    trailing: IconButton(
                      color: Colors.red,
                      icon: Icon(Icons.auto_delete_rounded),
                      onPressed: () {
                        _removeGPASem(
                            4, globals.sem04Total, globals.sem04Credits);
                      },
                    ),
                    subtitle: sem04 != null
                        ? sem04 >= 3.8
                            ? Text(
                                "GPA - " +
                                    sem04.toStringAsFixed(3) +
                                    " - Deans List",
                                style: TextStyle(color: Colors.indigo))
                            : Text("GPA - " + sem04.toStringAsFixed(3))
                        : Text(
                            "0.000",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dep4()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Semester 05 "),
                    leading: IconButton(
                      color: Colors.indigo,
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _saveGPA(5, globals.sem05Total, globals.sem05Credits);
                      },
                    ),
                    trailing: IconButton(
                      color: Colors.red,
                      icon: Icon(Icons.auto_delete_rounded),
                      onPressed: () {
                        _removeGPASem(
                            5, globals.sem05Total, globals.sem05Credits);
                      },
                    ),
                    subtitle: sem05 != null
                        ? sem05 >= 3.8
                            ? Text(
                                "GPA - " +
                                    sem05.toStringAsFixed(3) +
                                    " - Deans List",
                                style: TextStyle(color: Colors.indigo))
                            : Text("GPA - " + sem05.toStringAsFixed(3))
                        : Text(
                            "0.000",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dep5()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Semester 06 "),
                    leading: IconButton(
                      color: Colors.indigo,
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _saveGPA(6, globals.sem06Total, globals.sem06Credits);
                      },
                    ),
                    trailing: IconButton(
                      color: Colors.red,
                      icon: Icon(Icons.auto_delete_rounded),
                      onPressed: () {
                        _removeGPASem(
                            6, globals.sem06Total, globals.sem06Credits);
                      },
                    ),
                    subtitle: sem06 != null
                        ? sem06 >= 3.8
                            ? Text(
                                "GPA - " +
                                    sem06.toStringAsFixed(3) +
                                    " - Deans List",
                                style: TextStyle(color: Colors.indigo))
                            : Text("GPA - " + sem06.toStringAsFixed(3))
                        : Text(
                            "0.000",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dep6()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Semester 07 "),
                    leading: IconButton(
                      color: Colors.indigo,
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _saveGPA(7, globals.sem07Total, globals.sem07Credits);
                      },
                    ),
                    trailing: IconButton(
                      color: Colors.red,
                      icon: Icon(Icons.auto_delete_rounded),
                      onPressed: () {
                        _removeGPASem(
                            7, globals.sem07Total, globals.sem07Credits);
                      },
                    ),
                    subtitle: sem07 != null
                        ? sem07 >= 3.8
                            ? Text(
                                "GPA - " +
                                    sem07.toStringAsFixed(3) +
                                    " - Deans List",
                                style: TextStyle(color: Colors.indigo))
                            : Text("GPA - " + sem07.toStringAsFixed(3))
                        : Text(
                            "0.000",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dep7()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Semester 08 "),
                    leading: IconButton(
                      color: Colors.indigo,
                      icon: Icon(Icons.add),
                      onPressed: () {
                        _saveGPA(8, globals.sem08Total, globals.sem08Credits);
                      },
                    ),
                    trailing: IconButton(
                      color: Colors.red,
                      icon: Icon(Icons.auto_delete_rounded),
                      onPressed: () {
                        _removeGPASem(
                            8, globals.sem08Total, globals.sem08Credits);
                      },
                    ),
                    subtitle: sem08 != null
                        ? sem08 >= 3.8
                            ? Text(
                                "GPA - " +
                                    sem08.toStringAsFixed(3) +
                                    " - Deans List",
                                style: TextStyle(color: Colors.indigo))
                            : Text("GPA - " + sem08.toStringAsFixed(3))
                        : Text(
                            "0.000",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dep8()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Column(
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Dep3()));
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Dep4()));
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Dep5()));
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Dep6()));
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
                onPressed: () {},
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
                onPressed: () {},
                child: Text("Semester 08", style: TextStyle(fontSize: 25)),
              ),
            ],
          )
        ],
      ),
      Container(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "This is a GPA calculator app designed for Faculty of Engineering, Universitiy of Sri Jayawardenapura undergraduates to find their GPAs for all the academic semesters.",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    ];

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
        body: Container(
          child: _widgetOptions.elementAt(_selectedIndex),
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
                backgroundColor: Colors.indigo),
            BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: 'About',
                backgroundColor: Colors.indigo)
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.indigo,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
