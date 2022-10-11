import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import './results.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:collection/collection.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizPage1 extends StatefulWidget {
  const QuizPage1({super.key});

  @override
  State<QuizPage1> createState() => _QuizPageState();
}

var index = 0;
double total = 0;
var optionVal = 0;
double score1 = 2;
double score2 = 1.5;
double score3 = 1.1;
double score4 = 0.6;
double score5 = 0;
List scores = [];
double sum = 0;

class _QuizPageState extends State<QuizPage1> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Lottie.network(
              'https://assets4.lottiefiles.com/packages/lf20_pge4fjym.json')),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final questions = [
      'I have saved up so many things that they get in the way.',
      'I check things more often than necessary.',
      'I get upset if objects are not arranged properly.',
      'I feel compelled to count while I am doing things.',
      'I find it difficult to touch an object when I know it has been touched by strangers or certain people',
      'I find it difficult to control my own thoughts.',
      'I collect things I don\’t need.',
      'I repeatedly check doors, windows, drawers, etc.',
      'I get upset if others change the way I have arranged things.',
      'I feel I have to repeat certain numbers.',
      'I sometimes have to wash or clean myself simply because I feel contaminated.',
      'I am upset by unpleasant thoughts that come into my mind against my will.',
      'I avoid throwing things away because I am afraid I might need them later.',
      'I repeatedly check gas and water taps and light switches after turning them off.',
      'I need things to be arranged in a particular way.',
      'I feel that there are good and bad numbers',
      'I wash my hands more often and longer than necessary.',
      'I frequently get nasty thoughts and have difficulty in getting rid of them.',
      'I want things to be in perfect place '
    ];

    void changeQuestion1() {
      setState(() {
        index++;
        scores.add(2);
      });
      print(questions[index]);
    }

    void changeQuestion2() {
      setState(() {
        index++;
        scores.add(1.5);
      });
      print(questions[index]);
    }

    void changeQuestion3() {
      setState(() {
        index++;
        scores.add(1.1);
      });
      print(questions[index]);
    }

    void changeQuestion4() {
      setState(() {
        index++;
        scores.add(0.6);
      });
      print(questions[index]);
    }

    void changeQuestion5() {
      setState(() {
        index++;
        scores.add(0);
      });
      print(questions[index]);
    }

    // scores.forEach((e) => sum += e);
    // print('Total $sum');
    print(scores);

    return Scaffold(
      body: index == 18
          ? Results(scores)
          : Container(
              height: 700,
              decoration: BoxDecoration(color: Color(0xff6065CF)),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              'Question ${index + 1} / 18',
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: StepProgressIndicator(
                            totalSteps: 18,
                            currentStep: index + 1,
                            size: 10,
                            padding: 0,
                            selectedColor: Color(0xffFCA82F),
                            unselectedColor: Color(0xff7D82D8),
                            roundedEdges: Radius.circular(10),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Text(
                                    '${questions[index]}',
                                    style: TextStyle(
                                        color: Color(0xff294D77),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            height: 295,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SingleChildScrollView(
                                    child: Column(children: <Widget>[
                                      InkWell(
                                        onTap: () => scores.add(2),
                                        child: GestureDetector(
                                          onTap: changeQuestion1,
                                          child: Container(
                                            width: double.infinity,
                                            child: Center(
                                                child: Text(
                                              'Extremely',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            )),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 10),
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Color(0xffFCA82F),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: GestureDetector(
                                          onTap: changeQuestion2,
                                          child: Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 10),
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Color(0xffFCA82F),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: const Center(
                                                child: Text(
                                              'A lot',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            )),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: GestureDetector(
                                          onTap: changeQuestion3,
                                          child: Container(
                                            width: double.infinity,
                                            child: Center(
                                                child: Text(
                                              'Moderately',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            )),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 10),
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Color(0xffFCA82F),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: GestureDetector(
                                          onTap: changeQuestion4,
                                          child: Container(
                                            width: double.infinity,
                                            child: Center(
                                                child: Text(
                                              'A little bit',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            )),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 10),
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Color(0xffFCA82F),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: GestureDetector(
                                          onTap: changeQuestion5,
                                          child: Container(
                                            width: double.infinity,
                                            child: Center(
                                                child: Text(
                                              'Not at all',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            )),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 10),
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Color(0xffFCA82F),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
    );
  }
}
