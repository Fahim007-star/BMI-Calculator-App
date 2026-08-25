import 'package:bmi_calculator_app/bottom_button.dart';
import 'package:bmi_calculator_app/constants.dart';
import 'package:bmi_calculator_app/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text("Your Result", style: KTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: KActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Normal", style: KResultTextStyle),
                  Text("18.5", style: KBMITextStyle),
                  Text(
                    "You have a normal body weight. Good job!",
                    style: KBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              onTap: () {},
            ),
          ),
          BottomButton(
            ButtonTitle: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
