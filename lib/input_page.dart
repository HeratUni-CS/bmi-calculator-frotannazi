import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color bottomContainerColor = Color(0xFFEB1555);
const Color activeCardColor = Color(0xFF101427);
const Color inactiveCardColor = Color(0xFF1D1F33);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    color: (selectedgender == Gender.male)
                        ? activeCardColor
                        : inactiveCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                  ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    color: (selectedgender == Gender.female)
                        ? activeCardColor
                        : inactiveCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      //FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              height: 80,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
