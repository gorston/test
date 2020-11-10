import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'GenderLock.dart';
import 'Cont.dart';

const botHeight = 80.0;
const Color butonsColor = Color(0xFF1D1E33);
const Color bottomButonColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Cont(
                    colour: butonsColor,
                    cardChild: GenderLock(
                      gender: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: Cont(
                      colour: butonsColor,
                      cardChild: GenderLock(
                        gender: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Expanded(
              child: Cont(colour: butonsColor),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Cont(
                    colour: butonsColor,
                  ),
                ),
                Expanded(
                  child: Cont(
                    colour: butonsColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: bottomButonColor,
            margin: EdgeInsets.only(top: 15),
            width: double.infinity,
            height: botHeight,
          ),
        ],
      ),
    );
  }
}
