import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradienConteiner(),
      ),
    ),
  );
}

var obraz = 'assets/kot3.jpg';

class GradienConteiner extends StatelessWidget {
  const GradienConteiner({super.key});

  @override
  Widget build(context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "KoCiA ",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFeatures: [FontFeature.enable('smcp')]),
                    ),
                    Text(
                      "RuLeTkA",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFeatures: [FontFeature.enable('smcp')]),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.yellow,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.9,
                color: Colors.grey,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Image.asset(obraz),
                    ),
                    Container(
                      child: Row(children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            margin: EdgeInsets.only(left: 30, top: 30),
                            width: 150,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            alignment: Alignment.center,
                            child: Row(children: [
                              Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.green,
                                size: 40,
                              ),
                              Text(
                                "Prev",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black),
                              )
                            ]),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            width: 150,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15)),
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 30),
                            child: Row(children: [
                              Text(
                                "   Next",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black),
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.red,
                                size: 40,
                              )
                            ]),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 30),
                          width: 300,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Row(children: [
                            Container(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                  ),
                                  Icon(
                                    Icons.airline_stops_outlined,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                  Text(
                                    "  LOSUJ  ",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                  Icon(
                                    Icons.airline_stops_outlined,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
