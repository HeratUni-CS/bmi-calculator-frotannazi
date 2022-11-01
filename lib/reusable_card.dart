import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  Widget? child;
  final void Function()? onPressed;
  ReusableCard({required this.color, this.child , this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
      child: Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    child: child,
    ),
    ),);
  }
}