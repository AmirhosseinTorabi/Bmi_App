import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double slidervalue = 172;
  int weight = 69;
  int age = 26;
  Color firstcColor = Colors.white;
  Color seconedcColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder:(context)=>
            Scaffold(
          backgroundColor: Color.fromRGBO(58, 53, 53, 1),
          appBar: AppBar(
            title: Text(
              "BMI",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          //main column
          body: Column(
            children: [
              Flexible(
                  child: Container(
                      //first row
                      child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(35, 32, 32, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color.fromRGBO(88, 88, 88, 0.9),
                                  offset: Offset(2, 2),
                                  blurRadius: 8)
                            ]),
                        margin: EdgeInsets.fromLTRB(8, 8, 4, 8),
                        padding: EdgeInsets.all(20),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              firstcColor = Colors.red;
                              seconedcColor = Colors.white;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                "images/mars.png",
                                width: 55,
                                color: firstcColor,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(color: firstcColor, height: 3),
                              )
                            ],
                          ),
                        )),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(35, 32, 32, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color.fromRGBO(88, 88, 88, 0.9),
                                  offset: Offset(2, 2),
                                  blurRadius: 8)
                            ]),
                        margin: EdgeInsets.fromLTRB(4, 8, 8, 8),
                        padding: EdgeInsets.all(20),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              seconedcColor = Colors.red;
                              firstcColor = Colors.white;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                "images/venus.png",
                                width: 50,
                                color: seconedcColor,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(color: seconedcColor),
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              ))),
              //Seconed row
              Flexible(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(35, 32, 32, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Color.fromRGBO(88, 88, 88, 0.9),
                                offset: Offset(2, 2),
                                blurRadius: 8)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Height",
                                style: TextStyle(color: Colors.white70),
                              ),
                              Row(
                                children: [
                                  Text(
                                    slidervalue.toString().substring(0, 3),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Text(
                                    "Cm",
                                    style: TextStyle(color: Colors.white70),
                                  )
                                ],
                              ),
                              CupertinoSlider(
                                  activeColor: Colors.redAccent,
                                  value: slidervalue,
                                  min: 120,
                                  max: 240,
                                  divisions: 120,
                                  onChanged: (c) {
                                    setState(() {
                                      slidervalue = c;
                                    });
                                  })
                            ],
                          )
                        ],
                      ))),
              //3th row
              Flexible(
                  child: Container(
                      child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(35, 32, 32, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color.fromRGBO(88, 88, 88, 0.9),
                                  offset: Offset(2, 2),
                                  blurRadius: 8)
                            ]),
                        margin: EdgeInsets.fromLTRB(8, 8, 4, 8),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(color: Colors.white70),
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      ++weight;
                                    });
                                  },
                                  backgroundColor: Colors.black45,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                FloatingActionButton(
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      --weight;
                                    });
                                  },
                                  backgroundColor: Colors.black45,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(35, 32, 32, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color.fromRGBO(88, 88, 88, 0.9),
                                  offset: Offset(2, 2),
                                  blurRadius: 8)
                            ]),
                        margin: EdgeInsets.fromLTRB(8, 8, 4, 8),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(color: Colors.white70),
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      ++age;
                                    });
                                  },
                                  backgroundColor: Colors.black45,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                FloatingActionButton(
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      --age;
                                    });
                                  },
                                  backgroundColor: Colors.black45,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ))),

              Flexible(
                child: Container(
                  padding: EdgeInsets.all(50),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      String status;
                      double bmi = weight / math.pow((slidervalue / 100), 2);
                      if (bmi < 18.5)
                        status = "Under Weight";
                      else if (bmi > 18.5 && bmi < 24.9)
                        status = "Healthy Weight";
                      else if (bmi > 24.9 && bmi < 29.9)
                        status = "Over Weight";
                      else if (bmi > 30)
                        status = "Obese";
                      else
                        status = "Error! your bmi is $bmi";
                      showCupertinoDialog(
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                                title: Text("Your Status is..."),
                            content: Text(status),
                            actions: [FlatButton(onPressed: ()=>Navigator.of(context).pop(), child: Text("Dismiss"))],
                              ));
                    },
                    color: Colors.red,
                    child: Text(
                      "Calculate",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
