import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _height = 100;
  double _width = 300;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 10),
                    height: _height,
                    width: _width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () => setState(
                            () => _height = 1000,
                          ),
                          child: Text("Animate"),
                          color: Colors.white,
                        ),
                        ClipPath(
                          clipBehavior: Clip.antiAlias,
                          clipper: PointsClipper(),
                          child: Column(
                            children: [
                              Container(
                                color: Colors.white,
                                child: AnimatedContainer(
                                  height: 800,
                                  width: 500,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    border: Border.all(
                                        color: Colors.blueAccent, width: 2),
                                  ),
                                  duration: Duration(seconds: 5),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.account_box),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                start: 20),
                                          ),
                                          Text("Twinkle Indian Resto"),
                                        ],
                                      ),
                                      Table(
                                        children: [
                                          TableRow(
                                            children: [
                                              Text("Items"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Qty"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Rate"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Amount"),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Text("Biryani"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("x3"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Rs12.00"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Rs24.00"),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Text("Chicken"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("x1"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Rs12.00"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Rs12.00"),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Text("Beer-Corona"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("x6"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Rs4.00"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Rs24.00"),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Text("Sundaes"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("x6"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Rs5.00"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Rs30.00"),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              Text("Hakka Noodles"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("x1"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Rs10.00"),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 5),
                                              ),
                                              Text("Rs10.00"),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                      ),
                                      Row(
                                        children: [
                                          Text("SubTotal"),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                start: 100),
                                          ),
                                          Text("Rs120.00"),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Service Charge(5%)"),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                start: 50),
                                          ),
                                          Text("Rs24.00"),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Taxes(10%)"),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                start: 100),
                                          ),
                                          Text("Rs12.00"),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Gratuity(5%)"),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                start: 92),
                                          ),
                                          Text("Rs6.00"),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Tip to the Waiter"),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                start: 90),
                                          ),
                                          Text("Rs0.00"),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Container(
                                          height: 1.0,
                                          width: 600.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                start: 10),
                                          ),
                                          Text("Total"),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                start: 100),
                                          ),
                                          Text("Rs162.00"),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.only(
                                          start: 1000,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
