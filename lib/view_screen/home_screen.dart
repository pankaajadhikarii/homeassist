import 'package:flutter/material.dart';
import 'package:smarthomeassist/screen_widgets/gridview_home.dart';
import 'package:smarthomeassist/screen_widgets/homescreen_widgets.dart';
import 'package:smarthomeassist/view_screen/devices_screen.dart';
import 'package:smarthomeassist/view_screen/scenes_scree.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool isToggled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181D23),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xff31373C),
                    backgroundImage: AssetImage("assets/beautifulgirl.png"),
                  ),
                  Text(
                    "Sarah",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xff31373C),
                    child: Icon(
                      Icons.notifications_none_rounded,
                      size: 33,
                      color: Color(0xffB9F249),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 200,
                width: double.maxFinite,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xff31373C),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 190,
                      width: 190,
                      padding: EdgeInsets.only(
                        left: 15,
                        right: 5,
                        bottom: 5,
                        top: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff181D23),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 25,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color(0xffAACC00),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  "Normal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "24°C",
                                style: TextStyle(
                                  color: Color(0xffB9F249),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27,
                                ),
                              ),
                              SizedBox(width: 15),
                              Image(
                                image: AssetImage("assets/Vector.png"),
                                color: Colors.white,
                                height: 65,
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Temperature",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "Los Angeles,CA,USA",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Thu 12:00,Mostly Cloudly",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Container(
                          height: 92.5,
                          width: 139,
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 5,
                            bottom: 5,
                            top: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff181D23),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Electricity",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Usage",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 6.5),
                              Center(
                                child: Text(
                                  "32.5KWh",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Color(0xffB9F249),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 92.5,
                          width: 139,
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 5,
                            bottom: 5,
                            top: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff181D23),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Electricity",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Cost",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 6.5),
                              Center(
                                child: Text(
                                  "\$ 171.31",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Color(0xffB9F249),
                                  ),
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Scenes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ScenesScreen()),
                      );
                    },
                    child: AddBtn(),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Scenes(),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DevicesScreen()),
                  );
                },
                child: DividerOpt(text: "My Devices", cntText: "Add Device"),
              ),
              DeviceGrid(),
              SizedBox(height: 20),
              DividerOpt(text: "My Rooms", cntText: "Add Room"),
              SizedBox(height: 20),
              GridView.builder(
                itemCount: 4,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.5,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(15),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/room1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 90,
                          color: Colors.grey,
                        )
                      ],
                    )
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
