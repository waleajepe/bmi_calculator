import 'package:flutter/material.dart';
import 'constants.dart';

class ButtomIcom extends StatelessWidget {
  ButtomIcom({this.buttomTitle, this.onTap});
  final String buttomTitle;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: KBottomContainerHeight,
        child: Center(
          child: Text(
            buttomTitle,
            style: kResultStyle,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: kContainerColor,
        ),
      ),
    );
  }
}
