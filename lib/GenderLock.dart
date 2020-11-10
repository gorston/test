import 'package:flutter/material.dart';

const labelStyle = TextStyle(fontSize: 18, color: Colors.white);

class GenderLock extends StatelessWidget {
  GenderLock({@required this.gender, @required this.icon});
  final String gender;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: labelStyle,
        )
      ],
    );
  }
}
