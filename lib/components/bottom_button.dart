import 'package:bmi_starting/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String? title;

  final VoidCallback? onTaP;

  BottomButton({@required this.title, @required this.onTaP});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaP,
      child: Container(
        child: Center(
            child: Text(
          title!,
          style: kLargeButtonTextStyle,
        )),
        margin: EdgeInsets.only(top: 10),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHiegh,
      ),
    );
  }
}
