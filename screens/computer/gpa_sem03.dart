import 'package:flutter/material.dart';
import '../global.dart' as globals;
import '../home.dart';

class GPAComSem03 extends StatefulWidget {
  @override
  _GPAComSem03State createState() => _GPAComSem03State();
}

class _GPAComSem03State extends State<GPAComSem03> {
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

  String m = 'Select Grade',
      ee = 'Select Grade',
      th = 'Select Grade',
      com = 'Select Grade',
      civil = 'Select Grade',
      mech = 'Select Grade',
      mm = 'Select Grade',
      en = 'Select Grade',
      hist = 'Select Grade';

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
                  "\nCO2201 Data Structures and Algorithms - " +
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
                  "\nCO2202 Computer Organization - " + co.toStringAsFixed(3),
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
                  "\nCO2203 Object Oriented Programming - " +
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
                  "\nCO2204 Data Communication - " + me.toStringAsFixed(3),
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
                  "\nCO2105 Field Visit - " + thermo.toStringAsFixed(3),
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
                  "\nEE2206 Circuit Theory - " + his.toStringAsFixed(3),
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
                        ce = updateGrade(civil);
                        co = updateGrade(com);
                        elec = updateGrade(ee);
                        me = updateGrade(mech);
                        thermo = updateGrade(th);
                        em3 = updateGradeThree(m);
                        meas = updateGrade(mm);
                        eng = updateGrade(en);
                        his = updateGrade(hist);
                        total = (em3 +
                            elec +
                            thermo +
                            co +
                            ce +
                            me +
                            meas +
                            eng +
                            his);
                      });
                    },
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Text(
                    "\nTotal GPA: " + (total / 19).toStringAsFixed(3),
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
                      globals.sem03Credits = 19;
                      globals.sem03Total = total;
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
                  "Department of Computer Engineering",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            )),
        body: SizedBox(child: Calculate()),
      ),
    );
  }
}
