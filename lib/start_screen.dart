import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ocd_quiz/quiz_page.dart';
import 'package:page_transition/page_transition.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'OCD TEST',
                style: TextStyle(
                    color: Color(0xff294D77),
                    fontSize: 40,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_l11so9rv.json'),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Let the quiz begin',
                style: TextStyle(
                    color: Color(0xff294D77),
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: QuizPage1())),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffFCA82F),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('START QUIZ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.white)),
                ),
              ),
            )
          ]),
    );
  }
}
