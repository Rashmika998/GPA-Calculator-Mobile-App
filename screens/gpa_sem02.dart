import 'package:flutter/material.dart';

import 'global.dart' as globals;
import 'home.dart';

class GPASem02 extends StatefulWidget {
  @override
  _GPASem02State createState() => _GPASem02State();
}

class _GPASem02State extends State<GPASem02> {
  double em = 0.0,
      elec = 0.0,
      co = 0.0,
      ce = 0.0,
      me = 0.0,
      meas = 0.0,
      eng = 0.0,
      total = 0.0;

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

  double updateGradeOne(String s) {
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
    return res;
  }

  // ignore: non_constant_identifier_names
  Widget Calculate() {
    return Container(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "\nCE1202 Introduction to Fluid Mechanics - " +
                      ce.toStringAsFixed(3),
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
                  "\nCO1302 Programming for Engineers - " +
                      co.toStringAsFixed(3),
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
                  "\nEE1302 Electronics - " + elec.toStringAsFixed(3),
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
                  "\nME1303 Basic Manufacturing Processes - " +
                      me.toStringAsFixed(3),
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
                  "\nIS1301 Engineering Mathematics II - " +
                      em.toStringAsFixed(3),
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
                  "\nME1304 Engineering Drawing - " + meas.toStringAsFixed(3),
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
                  "\nIS1152 Presentation Skills in English - " +
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
                        "Credits - 1",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    dropDownEng(),
                    Text(
                      "\tNot Contributed\t",
                      style: TextStyle(
                          fontSize: 15.0,
                          backgroundColor: Colors.red,
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
                        ce = 2 * updateGradeOne(civil);
                        co = updateGradeThree(com);
                        elec = updateGradeThree(ee);
                        me = updateGradeThree(mech);
                        em = updateGradeThree(m);
                        meas = updateGradeThree(mm);
                        eng = updateGradeOne(en);
                        total = (em + elec + co + ce + me + meas);
                      });
                    },
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Text(
                    "\nTotal GPA: " + (total / 17).toStringAsFixed(3),
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
                      globals.sem02Credits = 17;
                      globals.sem02Total = total;
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
            title: Text(
              "GPA Calculator - Semester 02",
              style: TextStyle(fontSize: 22.0),
            )),
        body: SizedBox(child: Calculate()),
      ),
    );
  }
}
