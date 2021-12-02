import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

import 'package:unstack/widgets/constants.dart';

class HomePage extends StatelessWidget {
  final String _formattedTime =
      DateFormat('EEEE, d MMMM').format(DateTime.now());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: kbackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              blurRadius: 5,
              spreadRadius: 1,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(CupertinoIcons.rocket),
              iconSize: 25,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(CupertinoIcons.timer),
              iconSize: 25,
              color: const Color(0xFF787878),
              onPressed: () {},
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.teal,
                    kprimaryColor,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                CupertinoIcons.add,
              ),
            ),
            IconButton(
              icon: const Icon(CupertinoIcons.bolt_horizontal),
              iconSize: 25,
              onPressed: () {},
              color: const Color(0xFF787878),
            ),
            IconButton(
              icon: const Icon(CupertinoIcons.person),
              iconSize: 25,
              onPressed: () {},
              color: const Color(0xFF787878),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$_formattedTime\n",
                      style: kHintTextFieldTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: "Hey, Pratik JH",
                      style:
                          kIntroTextStyle.copyWith(fontSize: 22, height: 1.6),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kbackgroundColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(6.0, 6.0),
                        blurRadius: 15.0,
                        spreadRadius: 3.0,
                      ),
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-6.0, -6.0),
                        blurRadius: 15.0,
                        spreadRadius: 3.0,
                      ),
                    ],
                  ),
                  child: CircularPercentIndicator(
                    arcType: ArcType.FULL,
                    animateFromLastPercent: true,
                    arcBackgroundColor: Colors.black26,
                    radius: _mediaQuery.size.height * 0.30,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 12.0,
                    percent: 0.6,
                    center: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // const Icon(
                          //   CupertinoIcons.square_stack_3d_down_right_fill,
                          //   size: 30,
                          // ),
                          // const SizedBox(
                          //   height: 22,
                          // ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "${(0.6 * 100).round()}",
                                  style: kIntroTextStyle.copyWith(
                                    fontSize: 40,
                                  ),
                                ),
                                const TextSpan(
                                    text: " %\n",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    )),
                                TextSpan(
                                  text: "Work Done",
                                  style: kDesTextStyle.copyWith(
                                    fontSize: 14,
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: kprimaryColor,
                    linearGradient: const LinearGradient(colors: [
                      Color(0xFF09bdbd),
                      Color(0xFF007070),
                      Color(0xFF5577d4),
                      Color(0xFF446edf),
                    ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.all(2),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.teal,
                      kprimaryColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  decoration: BoxDecoration(
                    color: kbackgroundColor,
                    // border: Border.all(
                    //   color: Colors.teal,
                    //   width: 2,
                    // ),
                    borderRadius: BorderRadius.circular(15),
                    // gradient: const LinearGradient(
                    //   stops: [0.03, 0.03],
                    //   colors: [
                    //     Color(0xFFEF5350),
                    //     kbackgroundColor,
                    //   ],
                    // ),
                  ),
                  // margin: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter work remaining",
                        style: kTextFieldHintTextStyle.copyWith(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Row(
                          children: const [
                            Icon(
                              CupertinoIcons.alarm_fill,
                              color: Colors.white70,
                              size: 14,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "5:00 PM - 6:00 PM",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ConfirmationSlider(
                        onConfirmation: () {},
                        backgroundColor: Colors.white.withOpacity(0.05),
                        height: 50,
                        foregroundColor: kprimaryColor,
                      )
                    ],
                  ),
                ),
              ),
              // Container(
              //   height: 150,
              //   decoration: BoxDecoration(
              //     color: Colors.pink,
              //     borderRadius: BorderRadius.circular(15),
              //   ),
              //   width: double.infinity,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text("Flutter work remaining"),
              //       ConfirmationSlider(
              //         onConfirmation: () {},
              //         foregroundColor: kaccentColor,
              //         iconColor: kbackgroundColor,
              //         text: "Slide to Finish",
              //         textStyle: const TextStyle(
              //           color: Color(0xFF616161),
              //           fontWeight: FontWeight.w600,
              //         ),
              //         backgroundColor: Colors.white.withOpacity(0.12),
              //         height: 50,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
