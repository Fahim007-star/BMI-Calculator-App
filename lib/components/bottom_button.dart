import 'package:bmi_calculator_app/components/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.ButtonTitle,
    required this.onTap,
  });
  final String ButtonTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: KBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: KBottomContainerHeight,
        child: Center(child: Text(ButtonTitle, style: KLargeButtonTextStyle)),
      ),
    );
  }
}
