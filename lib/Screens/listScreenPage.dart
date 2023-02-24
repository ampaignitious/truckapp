import 'package:flutter/material.dart';
import 'package:truckapp/Screens/displayscreen.dart';
import 'package:truckapp/Screens/homepage.dart';

class ListScreenPage extends StatelessWidget {
  const ListScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: Colors.black26),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/image2.png"),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Crane",
          style: TextStyle(color: Colors.green),
        ),
      ],
    );
  }
}
