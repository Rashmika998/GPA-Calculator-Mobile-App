import 'package:first_app/screens/home.dart';
import 'package:flutter/material.dart';

import '../global.dart' as globals;

class GPACivilSem03 extends StatefulWidget {
  @override
  _GPACivilSem03State createState() => _GPACivilSem03State();
}

class _GPACivilSem03State extends State<GPACivilSem03> {
  double em3 = 0.0,
      elec = 0.0,
      co = 0.0,
      ce = 0.0,
      me = 0.0,
      meas = 0.0,
      eng = 0.0,
      // ignore: non_constant_identifier_names
      total_sem03 = 0.0;

  String m = 'Select Grade',
      ee = 'Select Grade',
      com = 'Select Grade',
      civil = 'Select Grade',
      mech = 'Select Grade',
      mm = 'Select Grade',
      en = 'Select Grade';

  Widget dropDownCivil() {
    return Container(
      child: DropdownButton<String>(
        value: civil,
        onChanged: (String newVal) {
          setState(() {
            civil = newVal;
          });
        },
        items: <String>[
          'Select Grade',
          'A+',
          'A',
          'A-',
          'B+',
          'B',
          'B-',
          'C+',
          'C',
          'R'
        ].map<DropdownMenuItem<String>>((String e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }

  Widget dropDownCom() {
    return Container(
      child: DropdownButton<String>(
        value: com,
        onChanged: (String newVal) {
          setState(() {
            com = newVal;
          });
        },
        items: <String>[
          'Select Grade',
          'A+',
          'A',
          'A-',
          'B+',
          'B',
          'B-',
          'C+',
          'C',
          'R'
        ].map<DropdownMenuItem<String>>((String e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }

  Widget dropDownElec() {
    return Container(
      child: DropdownButton<String>(
        value: ee,
        onChanged: (String newVal) {
          setState(() {
            ee = newVal;
          });
        },
        items: <String>[
          'Select Grade',
          'A+',
          'A',
          'A-',
          'B+',
          'B',
          'B-',
          'C+',
          'C',
          'R'
        ].map<DropdownMenuItem<String>>((String e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }

  Widget dropDownMech() {
    return Container(
      child: DropdownButton<String>(
        value: mech,
        onChanged: (String newVal) {
          setState(() {
            mech = newVal;
          });
        },
        items: <String>[
          'Select Grade',
          'A+',
          'A',
          'A-',
          'B+',
          'B',
          'B-',
          'C+',
          'C',
          'R'
        ].map<DropdownMenuItem<String>>((String e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }

  Widget dropDownMaths() {
    return Container(
      child: DropdownButton<String>(
        value: m,
        onChanged: (String newVal) {
          setState(() {
            m = newVal;
          });
        },
        items: <String>[
          'Select Grade',
          'A+',
          'A',
          'A-',
          'B+',
          'B',
          'B-',
          'C+',
          'C',
          'R'
        ].map<DropdownMenuItem<String>>((String e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }

  Widget dropDownMeas() {
    return Container(
      child: DropdownButton<String>(
        value: mm,
        onChanged: (String newVal) {
          setState(() {
            mm = newVal;
          });
        },
        items: <String>[
          'Select Grade',
          'A+',
          'A',
          'A-',
          'B+',
          'B',
          'B-',
          'C+',
          'C',
          'R'
        ].map<DropdownMenuItem<String>>((String e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }

  Widget dropDownEng() {
    return Container(
      child: DropdownButton<String>(
        value: en,
        onChanged: (String newVal) {
          setState(() {
            en = newVal;
          });
        },
        items: <String>[
          'Select Grade',
          'A+',
          'A',
          'A-',
          'B+',
          'B',
          'B-',
          'C+',
          'C',
          'R'
        ].map<DropdownMenuItem<String>>((String e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }

  double updateGrade(String s) {
    double res = 0;
    if (s == 'A+') {
      res = 4;
    } else if (s == 'A') {
      res = 4;
    } else if (s == 'A-') {
      res = 3.7;
    } else if (s == 'B+') {
      res = 3.3;
    } else if (s == 'B') {
      res = 3;
    } else if (s == 'B-') {
      res = 2.7;
    } else if (s == 'C+') {
      res = 2.3;
    } else if (s == 'C') {
      res = 2;
    } else {
      res = 0;
    }
    return 2 * res;
  }

  double updateGradeThree(String s) {
    double res = 0;
    if (s == 'A+') {
      res = 4;
    } else if (s == 'A') {
      res = 4;
    } else if (s == 'A-') {
      res = 3.7;
    } else if (s == 'B+') {
      res = 3.3;
    } else if (s == 'B') {
      res = 3;
    } else if (s == 'B-') {
      res = 2.7;
    } else if (s == 'C+') {
      res = 2.3;
    } else if (s == 'C') {
      res = 2;
    } else {
      res = 0;
    }
    return 3 * res;
  }

  // ignore: non_constant_identifier_names
  Widget Calculate() {
    return Container(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "\nCE2301 Structural Mechanics - " + ce.toStringAsFixed(3),
                  style: TextStyle(fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: missing_required_param
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo),
                      ),
                      child: Text(
                        "Credits - 3",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    dropDownCivil(),
                    Text(
                      "\tGPA Contributed\t",
                      style: TextStyle(
                          fontSize: 15.0,
                          backgroundColor: Colors.green,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Column(
              children: [
                Text(
                  "\nCE2302 Fluid Mechanics - " + co.toStringAsFixed(3),
                  style: TextStyle(fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: missing_required_param
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo),
                      ),
                      child: Text(
                        "Credits - 3",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    dropDownCom(),
                    Text(
                      "\tGPA Contributed\t",
                      style: TextStyle(
                          fontSize: 15.0,
                          backgroundColor: Colors.green,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Column(
              children: [
                Text(
                  "\nCE2203 Building Design Process - " +
                      elec.toStringAsFixed(3),
                  style: TextStyle(fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: missing_required_param
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo),
                      ),
                      child: Text(
                        "Credits - 2",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    dropDownElec(),
                    Text(
                      "\tGPA Contributed\t",
                      style: TextStyle(
                          fontSize: 15.0,
                          backgroundColor: Colors.green,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Column(
              children: [
                Text(
                  "\nCE2304 Surveying I - " + me.toStringAsFixed(3),
                  style: TextStyle(fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: missing_required_param
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo),
                      ),
                      child: Text(
                        "Credits - 3",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    dropDownMech(),
                    Text(
                      "\tGPA Contributed\t",
                      style: TextStyle(
                          fontSize: 15.0,
                          backgroundColor: Colors.green,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Column(
              children: [
                Text(
                  "\nIS2301 Engineering Mathematics III - " +
                      em3.toStringAsFixed(3),
                  style: TextStyle(fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: missing_required_param
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo),
                      ),
                      child: Text(
                        "Credits - 3",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    dropDownMaths(),
                    Text(
                      "\tGPA Contributed\t",
                      style: TextStyle(
                          fontSize: 15.0,
                          backgroundColor: Colors.green,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Column(
              children: [
                Text(
                  "\nIS2202 Engineering Mathematics IV - " +
                      meas.toStringAsFixed(3),
                  style: TextStyle(fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: missing_required_param
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo),
                      ),
                      child: Text(
                        "Credits - 2",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    dropDownMeas(),
                    Text(
                      "\tGPA Contributed\t",
                      style: TextStyle(
                          fontSize: 15.0,
                          backgroundColor: Colors.green,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Column(
              children: [
                Text(
                  "\nIS2291 Accounting for Engineers - " +
                      eng.toStringAsFixed(3),
                  style: TextStyle(fontSize: 17),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: missing_required_param
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo),
                      ),
                      child: Text(
                        "Credits - 2",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    dropDownEng(),
                    Text(
                      "\tGPA Contributed\t",
                      style: TextStyle(
                          fontSize: 15.0,
                          backgroundColor: Colors.green,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Column(
                children: [
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.indigo),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        ce = updateGradeThree(civil);
                        co = updateGradeThree(com);
                        elec = updateGrade(ee);
                        me = updateGradeThree(mech);
                        em3 = updateGradeThree(m);
                        meas = updateGrade(mm);
                        eng = updateGrade(en);
                        total_sem03 = (em3 + elec + co + ce + me + meas + eng);
                      });
                    },
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Text(
                    "\nTotal GPA: " + (total_sem03 / 18).toStringAsFixed(3),
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FloatingActionButton(
                    tooltip: "Save",
                    backgroundColor: Colors.indigo,
                    child: Icon(Icons.save),
                    onPressed: () {
                      globals.sem03Credits = 18;
                      globals.sem03Total = total_sem03;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Column(
              children: [
                Text(
                  "GPA Calculator - Semester 03",
                  style: TextStyle(fontSize: 22.0),
                ),
                Text(
                  "Department of Civil Engineering",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            )),
        body: SizedBox(child: Calculate()),
      ),
    );
  }
}
