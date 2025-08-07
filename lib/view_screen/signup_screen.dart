import 'package:flutter/material.dart';
import 'package:smarthomeassist/screen_widgets/auth_widget.dart';
import 'package:smarthomeassist/view_screen/home_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image 1.png"),
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image(
                          image: AssetImage("assets/homesync.png"),
                          height: 40,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "HomeSync",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Looks like you don't have an account. Let's create a new account for you.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  HTextFormField(
                    hintTexts: "Name",
                    keyBoardType: TextInputType.name,
                  ),
                  SizedBox(height: 15),
                  HTextFormField(
                    hintTexts: "Email",
                    keyBoardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 15),
                  HTextFormField(
                    hintTexts: "Password",
                    keyBoardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "By selecting Create Account below, I agree to Terms of Service & Privacy Policy",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  AuthBtn(text: "CREATE ACCOUNT"),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Homescreen()),
                      );
                    },
                    child: AuthBtn(text: "LOGIN"),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(width: 150, child: Divider(color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          "Or",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 150, child: Divider(color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 20),
                  AuthSuggestion(
                    text: "Sign Up with Google",
                    imagePath: "assets/google.png",
                  ),
                  SizedBox(height: 15),
                  AuthSuggestion(
                    text: "Sign Up with Apple",
                    imagePath: "assets/apple.png",
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "CONTINUE AS GUEST",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
