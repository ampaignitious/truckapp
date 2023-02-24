import 'package:flutter/material.dart';
import 'package:truckapp/Screens/displayscreen.dart';
import 'package:truckapp/Screens/homepage.dart';

class ListScreenPage extends StatelessWidget {
  ListScreenPage({super.key});
  List name = ["Crane", "Van", "Bike"];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // height: size.height * 0.02,
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: Colors.black26),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/image3.png"),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name.elementAt(0),
          style: TextStyle(color: Colors.green),
        ),
      ],
    );
  }
}
