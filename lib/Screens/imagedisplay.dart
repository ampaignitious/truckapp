import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageDisplay extends StatelessWidget {
  final String vehicletype;
  ImageDisplay({required this.vehicletype, super.key});

  List images = [
    "image5.png",
    "image6.png",
    "image7.png",
    "image8.png",
    "image9.png"
  ];

  List Trucks = [
    "image3.png",
    "image5.png",
    "image6.png",
    "image7.png",
    "image3.png",
  ];

  List pickups = [
    "image9.png",
    "image4.png",
    "image15.png",
    "image9.png",
    "image4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) {
        return Container(
          margin: EdgeInsets.only(right: 20),
          height: 225,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 243, 239, 239),
          ),
          child: Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 20, bottom: 20, right: 20, top: 10),
                height: 140,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(images.elementAt(index)),
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Fuso Fighter",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      // fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
