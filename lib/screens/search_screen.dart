import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:sample_programming/screens/utilities/App_Layout.dart';
import 'package:sample_programming/screens/utilities/App_styles.dart';
import 'package:sample_programming/widgets/double_text_widget.dart';
import 'package:sample_programming/widgets/icon_text_widget.dart';
import 'package:sample_programming/widgets/text_screen.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backGroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
        ),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Text(
            "What are\nyou looking for?",
            style: styles.headLineStyle1.copyWith(
              fontSize: AppLayout.getHeight(20),
            ),
          ),
          Gap(
            AppLayout.getHeight(40),
          ),
          AppTicketTAbs(firstText: "Airline tickets", secondText: "Hotels"),
          Gap(
            AppLayout.getHeight(25),
          ),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(
            AppLayout.getHeight(20),
          ),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(
            AppLayout.getHeight(25),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(15),
                vertical: AppLayout.getWidth(18)),
            decoration: BoxDecoration(
              color: Color(0xD91130CE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "find Tickets",
              style: styles.textStyle.copyWith(color: Colors.white),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const appDoubleTextWidget(text: "Upcoming flights"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                height: AppLayout.getHeight(382),
                width: AppLayout.getScreenWidth() * 0.42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/sit.jpg"),
                              fit: BoxFit.cover),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12))),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out on this chance",
                      style: styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: AppLayout.getScreenWidth() * 0.42,
                        height: AppLayout.getHeight(176),
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(15),
                            vertical: AppLayout.getHeight(16)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor services",
                              style: styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                                "Take the survey about our services and get discount",
                                style: styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: Color(0xFF189999),
                              ),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: AppLayout.getScreenWidth() * 0.44,
                    height: AppLayout.getHeight(180),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 35),
                            ),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 50),
                            ),
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 35),
                            ),
                          ]),
                        )
                      ], //😍😘
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
