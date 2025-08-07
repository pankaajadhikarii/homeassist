import 'package:flutter/material.dart';
import 'package:smarthomeassist/widget/auth_widget.dart';
import 'package:smarthomeassist/widget/homescreen_widgets.dart';

class ScenesScreen extends StatelessWidget {
  const ScenesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181D23),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Color(0xff31373C),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: Color(0xffB9F249),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Scenes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Scenes(),
            Spacer(),
            AuthBtn(text: "Create your Scene"),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
