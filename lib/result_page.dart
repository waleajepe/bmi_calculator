import 'package:flutter/material.dart';
import 'input_page.dart';
import 'reusable_container.dart';
import 'constants.dart';
import 'buttom_icon.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.description, @required this.bmiResult, @required this.interpretation});
  final String description;
  final String bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return (
    Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kNumberTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(description, style: TextStyle(color: Colors.greenAccent),),
                  Text(bmiResult, style: kNumberTextStyle,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(interpretation, textAlign: TextAlign.center,),
                  ),

                ],
              ),

            ),
          ),
          ButtomIcom(buttomTitle: 'Re-Calculate', onTap:  () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => InputPage()));
          },),
        ],
      ),
    )
    );
  }
}
