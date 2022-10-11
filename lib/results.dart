import 'package:flutter/material.dart';
import 'package:ocd_quiz/start_screen.dart';
import './quiz_page.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class Results extends StatefulWidget {
  Results(this.scores);
  final List<dynamic> scores;
  @override
  State<Results> createState() => RresultsState();
}

var tagValue = "";

class RresultsState extends State<Results> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
              color: Colors.white,
              child: Lottie.network(
                  'https://assets10.lottiefiles.com/private_files/lf30_sbjxcjlp.json')),
          SizedBox(
            height: 20,
          ),
          Text(
            'Loading your results',
            style: TextStyle(
                color: Color.fromARGB(255, 80, 85, 189), fontSize: 20),
          )
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    scores.forEach((e) => sum += e);
    print('Total $sum');
    if (sum > 32 && sum < 40) {
      tagValue = 'Extreme';
    } else if (sum < 31 && sum > 24) {
      tagValue = 'Severe';
    } else if (sum < 23 && sum > 16) {
      tagValue = 'Moderate';
    } else if (sum < 15 && sum > 8) {
      tagValue = 'Mild';
    } else if (sum < 7 && sum > 0) {
      tagValue = 'Subclinical';
    }
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Lottie.network(
              'https://assets7.lottiefiles.com/packages/lf20_QU0V6MuXdA.json'),
          Divider(
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'OCD score - ',
                    style: TextStyle(fontSize: 25, color: Color(0xffFCA82F)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${sum.toStringAsFixed(2)}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                                color: Color(0xff294D77))),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Status - ',
                    style: TextStyle(fontSize: 25, color: Color(0xffFCA82F)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 75),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$tagValue',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                                color: Color(0xff294D77))),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: StartScreen()));
              },
              child: Text(
                'Take a test again',
                style: TextStyle(fontSize: 15),
              ))
        ],
      ),
    ));
  }
}
