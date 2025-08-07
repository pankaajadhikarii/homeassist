import 'package:flutter/material.dart';
import 'package:smarthomeassist/screen_widgets/homescreen_widgets.dart';

List deviceInfo = [
  {
    "deviceName": "Air Conditioner",
    "devices": "3 Devices",
    "image": AssetImage("assets/ac.png"),
  },
  {
    "deviceName": "Smart Speaker",
    "devices": "1 Device",
    "image": AssetImage("assets/speaker.png"),
  },
  {
    "deviceName": "Smart Lamp",
    "devices": "3 Device",
    "image": AssetImage("assets/lamp.png"),
  },
  {
    "deviceName": "Smart LED",
    "devices": "8 Device",
    "image": AssetImage("assets/ledlamp.png"),
  },
];

class DeviceGrid extends StatelessWidget {
  DeviceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 385,
      child: GridView.builder(
        itemCount: 4,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 13,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff31373C),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffB9F249),
                  ),
                ),
                Image(image: deviceInfo[index]["image"], height: 50),
                Text(
                  deviceInfo[index]["deviceName"],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  deviceInfo[index]["devices"],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Align(alignment: Alignment.bottomRight, child: SwitchBtn()),
              ],
            ),
          );
        },
      ),
    );
  }
}
