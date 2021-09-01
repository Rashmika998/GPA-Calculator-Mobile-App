import 'package:flutter/material.dart';

class TabOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
            child: ListView(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Rashmika Silva",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.school),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        " Went to Royal College",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        " Lives in Bambalapitiya",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        " 0711231231",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ],
            )),
            Container(
                padding: EdgeInsets.all(50.0),
                width: 200.0,
                height: 700.0,
                child: Image.asset(
                  'assets/dp.png',
                  fit: BoxFit.fill,
                ))
          ],
        )),
      ),
    );
  }
}
