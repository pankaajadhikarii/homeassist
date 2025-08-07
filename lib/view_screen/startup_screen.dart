import 'package:flutter/material.dart';
import 'package:smarthomeassist/screen_widgets/blurred_btn.dart';
import 'package:smarthomeassist/view_screen/signin_screen.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imageFront.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withValues(alpha: 0.6),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Full Control\nFor Your\nSmart\nHome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SigninScreen()),
                      );
                    },
                    child: BlurredBtn(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

