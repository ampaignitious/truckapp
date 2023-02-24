import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truckapp/Screens/imagedisplay.dart';

import 'listScreenPage.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with TickerProviderStateMixin {
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
    TabController _tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 40,
                      color: Color.fromARGB(248, 97, 96, 96),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.green,
                      size: 30,
                    ),
                    Text(
                      "Shared Resources",
                      style: GoogleFonts.lato(
                        color: Colors.green,
                        fontSize: 18,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                    SizedBox(
                      width: 28,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/image11.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "Vehicles",
                  style: GoogleFonts.lato(
                    color: Colors.green,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "Explore the best way to move tools.",
                  style: GoogleFonts.lato(
                    color: Colors.black45,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black54,
                  unselectedLabelColor: Colors.black26,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(text: "All"),
                    Tab(text: "Trucks"),
                    Tab(text: "PickUps"),
                    Tab(text: "Van"),
                    Tab(text: "SDN"),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 20, bottom: 20, right: 20, top: 10),
                height: 225,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    // color: Color.fromARGB(171, 214, 211, 211),
                    ),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ImageDisplay(vehicletype: "images"),
                    ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: 20, bottom: 20, right: 20, top: 10),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(171, 214, 211, 211),
                            image: DecorationImage(
                              image: AssetImage(Trucks.elementAt(index)),
                            ),
                          ),
                        );
                      }),
                    ),
                    ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: 20, bottom: 20, right: 20, top: 10),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(171, 214, 211, 211),
                            image: DecorationImage(
                              image: AssetImage(pickups.elementAt(index)),
                            ),
                          ),
                        );
                      }),
                    ),
                    Center(child: Text("Images of vans to be added later")),
                    Center(child: Text("Images of SDN to be added later")),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 26,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Brands",
                      style: GoogleFonts.lato(
                        color: Color.fromARGB(255, 28, 124, 31),
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "See all",
                      style: GoogleFonts.lato(
                        color: Colors.grey[350],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      ListScreenPage(),
                      SizedBox(width: 20),
                      ListScreenPage(),
                      SizedBox(width: 20),
                      ListScreenPage(),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
