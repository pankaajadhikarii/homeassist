import 'package:flutter/material.dart';

class SwitchBtn extends StatefulWidget {
  const SwitchBtn({super.key});

  @override
  State<SwitchBtn> createState() => _SwitchBtnState();
}

class _SwitchBtnState extends State<SwitchBtn> {
  bool isToggled = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Switch(
        value: isToggled,
        onChanged: (value) {
          setState(() {
            isToggled = value;
          });
        },
        activeColor: Colors.white,
        activeTrackColor: Color(0xffB9F249),
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.black,
      ),
    );
  }
}

class DividerOpt extends StatelessWidget {
  final text;
  final cntText;

  const DividerOpt({super.key, required this.text, required this.cntText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        Container(
          height: 30,
          width: 130,
          padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 10),
          decoration: BoxDecoration(
            color: Color(0xff31373C),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor: Color(0xffB9F249),
                child: Icon(Icons.add, color: Color(0xff181D23), size: 20),
              ),
              Text(
                cntText,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class Scenes extends StatelessWidget {
  const Scenes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.maxFinite,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xff31373C),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            height: 62,
            width: 335,
            padding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 5,
            ),
            decoration: BoxDecoration(
              color: Color(0xff181D23),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff31373C),
                      child: Icon(
                        Icons.sunny,
                        color: Color(0xffB9F249),
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Morning Scene",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SwitchBtn()
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 62,
            width: 335,
            padding: EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
              bottom: 5,
            ),
            decoration: BoxDecoration(
              color: Color(0xff181D23),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xff31373C),
                      child: Icon(
                        Icons.nightlight,
                        color: Color(0xffB9F249),
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Night Scene",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SwitchBtn()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddBtn extends StatelessWidget {
  const AddBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 13,
      backgroundColor: Color(0xffB9F249),
      child: Icon(Icons.add, size: 25, color: Color(0xff211D1D)),
    );
  }
}