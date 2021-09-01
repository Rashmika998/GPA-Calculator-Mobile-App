import 'package:flutter/material.dart';

import '../global.dart' as globals;
import '../home.dart';

class GPACivilSem06 extends StatefulWidget {
  @override
  _GPACivilSem06State createState() => _GPACivilSem06State();
}

class _GPACivilSem06State extends State<GPACivilSem06> {
  double em3 = 0.0,
      elec = 0.0,
      thermo = 0.0,
      co = 0.0,
      ce = 0.0,
      me = 0.0,
      meas = 0.0,
      eng = 0.0,
      his = 0.0,
      total = 0.0;

  int mo1 = 0, mo2 = 0, mo3 = 0;

  String m = 'Select Grade',
      ee = 'Select Grade',
      th = 'Select Grade',
      com = 'Select Grade',
      civil = 'Select Grade',
      mech = 'Select Grade',
      mm = 'Select Grade',
      hist = 'Select Grade',
      en = 'Select Grade',
      mod3 = 'Select Module';

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

  Widget dropDownThermo() {
    return Container(
      child: DropdownButton<String>(
        value: th,
        onChanged: (String newVal) {
          setState(() {
            th = newVal;
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

  Widget dropDownHis() {
    return Container(
      child: DropdownButton<String>(
        value: hist,
        onChanged: (String newVal) {
          setState(() {
            hist = newVal;
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

  Widget selectMod3() {
    return Container(
      child: DropdownButton<String>(
        value: mod3,
        onChanged: (String newVal) {
          setState(() {
            mod3 = newVal;
            mo3 = modCredits(mod3);
          });
        },
        items: <String>[
          'Select Module',
          'CE3252 Design Masonry Structures',
          'CE3262 Environmental Geotechnics',
          'CE3272 Rail Transport Systems'
        ].map<DropdownMenuItem<String>>((String e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }

  int modCredits(String s) {
    if (s == "CE3252 Design Masonry Structures")
      return 2;
    else if (s == "CE3262 Environmental Geotechnics")
      return 2;
    else if (s == "CE3272 Rail Transport Systems")
      return 2;
    else
      return 0;
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
                  "\nCE3306 Design of Concrete Structures I - " +
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
                  "\nCE3207 Hydraulic Design - " + co.toStringAsFixed(3),
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
                  "\nCE3308 Geotechnical Engineering - " +
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
                  "\nCE3209 Construction Management - " + me.toStringAsFixed(3),
                  style: TextStyle(fontSize: 16),
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
                  "\nCE3110 Surveying Field Project - " +
                      em3.toStringAsFixed(3),
                  style: TextStyle(fontSize: 15),
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
                    dropDownMaths(),
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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    selectMod3(),
                    Text(
                      thermo.toStringAsFixed(3),
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
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
                        "Credits - " + mo3.toString(),
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    dropDownThermo(),
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
                  "\nIS3163 Industrial Law - " + meas.toStringAsFixed(3),
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
                  "\nIS3151 Technical Writing - " + his.toStringAsFixed(3),
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
                    dropDownHis(),
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
                        co = updateGrade(com);
                        elec = updateGradeThree(ee);
                        me = updateGrade(mech);
                        thermo = updateGrade(th);
                        em3 = updateGradeOne(m);
                        meas = updateGrade(mm);
                        his = updateGradeOne(hist);
                        total = (elec + thermo + co + ce + me + his + meas);
                      });
                    },
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Text(
                    "\nTotal GPA: " + (total / 15).toStringAsFixed(3),
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
                      globals.sem06Credits = 15;
                      globals.sem06Total = total;
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
                  "GPA Calculator - Semester 06",
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
