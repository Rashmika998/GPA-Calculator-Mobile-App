import 'package:flutter/material.dart';

import '../global.dart' as globals;
import '../home.dart';

class GPAMechSem08 extends StatefulWidget {
  @override
  _GPAMechSem08State createState() => _GPAMechSem08State();
}

class _GPAMechSem08State extends State<GPAMechSem08> {
  double em3 = 0.0,
      elec = 0.0,
      thermo = 0.0,
      co = 0.0,
      ce = 0.0,
      me = 0.0,
      meas = 0.0,
      eng = 0.0,
      his = 0.0,
      one = 0.0,
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
      ones = 'Select Grade',
      mod1 = 'Select Module',
      mod2 = 'Select Module';

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

  Widget dropDownOne() {
    return Container(
      child: DropdownButton<String>(
        value: ones,
        onChanged: (String newVal) {
          setState(() {
            ones = newVal;
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

  Widget selectMod1() {
    return Container(
      child: DropdownButton<String>(
        value: mod1,
        onChanged: (String newVal) {
          setState(() {
            mod1 = newVal;
            mo1 = modCredits(mod1);
          });
        },
        style: TextStyle(fontSize: 13, color: Colors.black),
        items: <String>[
          'Select Module',
          'ME4369 Computer Aided Manufacturing',
          'ME4270 Industrial Automation',
          'ME4271 Building Acoustics',
          'ME4372 Facility & Building Environmental Management',
          'ME4373 Smart Sensors, Actuators & Intelligent Systems',
          'ME4274 Introduction to Micro-mechatronics'
        ].map<DropdownMenuItem<String>>((String e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(e),
          );
        }).toList(),
      ),
    );
  }

  Widget selectMod2() {
    return Container(
      child: DropdownButton<String>(
        value: mod2,
        onChanged: (String newVal) {
          setState(() {
            mod2 = newVal;
            mo2 = modCredits(mod2);
          });
        },
        style: TextStyle(fontSize: 13, color: Colors.black),
        items: <String>[
          'Select Module',
          'ME4369 Computer Aided Manufacturing',
          'ME4270 Industrial Automation',
          'ME4271 Building Acoustics',
          'ME4372 Facility & Building Environmental Management',
          'ME4373 Smart Sensors, Actuators & Intelligent Systems',
          'ME4274 Introduction to Micro-mechatronics'
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
    if (s == "ME4369 Computer Aided Manufacturing")
      return 3;
    else if (s == "ME4270 Industrial Automation")
      return 2;
    else if (s == "ME4271 Building Acoustics")
      return 2;
    else if (s == "ME4372 Facility & Building Environmental Management")
      return 3;
    else if (s == "ME4373 Smart Sensors, Actuators & Intelligent Systems")
      return 3;
    else if (s == "ME4274 Introduction to Micro-mechatronics")
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
                  "\nME4001 Engineering Project - " + ce.toStringAsFixed(3),
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
                        "Credits - 6",
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
                  "\nME4205 Heat Transfer - " + co.toStringAsFixed(3),
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
                  "\nME4106 Advanced MAchine Dynamics - " +
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
                        "Credits - 1",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    selectMod1(),
                    Text(
                      me.toStringAsFixed(3),
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
                        "Credits - " + mo1.toString(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    selectMod2(),
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
                        "Credits - " + mo2.toString(),
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
                  "\nIS4171 Ethics in Engineering - " + his.toStringAsFixed(3),
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
                        ce = 6 * updateGradeOne(civil);
                        co = updateGrade(com);
                        thermo = mo2 * updateGradeOne(th);
                        me = mo1 * updateGradeOne(mech);
                        meas = updateGradeOne(mm);
                        his = updateGradeOne(hist);
                        total = ((thermo + co + ce + me + meas + his));
                      });
                    },
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                  Text(
                    "\nTotal GPA: " +
                        (total / 10 + mo1 + mo2).toStringAsFixed(3),
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
                      globals.sem08Credits = 10 + mo1 + mo2;
                      globals.sem08Total = total;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
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
                  "GPA Calculator - Semester 08",
                  style: TextStyle(fontSize: 22.0),
                ),
                Text(
                  "Department of Mehcanical Engineering",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            )),
        body: SizedBox(child: Calculate()),
      ),
    );
  }
}
