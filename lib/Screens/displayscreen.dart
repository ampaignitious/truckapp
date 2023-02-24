import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class displayScreen extends StatelessWidget {
  const displayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Color.fromARGB(255, 235, 234, 234),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_ios),
                        Text(
                          "Fuso Fighter",
                          style: TextStyle(fontSize: 25, color: Colors.green),
                        ),
                        Icon(Icons.insert_link_outlined)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 180,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      color: Color.fromARGB(255, 235, 234, 234),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage("assets/image11.png"),
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Available",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "4",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  "Developing software for the upcoming truck drivers Developing software for the upcoming truck drivers Developing software for the upcoming truck drivers  Developing software for the upcoming truck drivers",
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 16,
                    // fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Read more...",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 24,
                        color: Colors.green,
                        // fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 12,
                ),
                child: Row(
                  children: [
                    Icon(Icons.question_answer_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Quantity",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Version",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 13,
                        // fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22,
                ),
                child: Row(
                  children: [
                    Text("4"),
                    SizedBox(
                      width: 124,
                    ),
                    Text("Mitshubish Fighter"),
                    SizedBox(
                      width: 60,
                    ),
                    Icon(Icons.navigate_next_outlined),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 114, 233, 118),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Confirm",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
