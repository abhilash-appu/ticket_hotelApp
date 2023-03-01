import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:sample_programming/screens/Ticket_view.dart';
import 'package:sample_programming/screens/utilities/App_Layout.dart';
import 'package:sample_programming/screens/utilities/App_info_list.dart';
import 'package:sample_programming/screens/utilities/App_styles.dart';
import 'package:sample_programming/widgets/App_colum_layout.dart';
import 'package:sample_programming/widgets/layout_builder.dart';
import 'package:sample_programming/widgets/text_screen.dart';
import 'package:barcode_widget/barcode_widget.dart';

class ticketScreen extends StatelessWidget {
  const ticketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backGroundColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              AppTicketTAbs(firstText: "Upcoming", secondText: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  tickets: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getWidth(20)),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "5221 348682",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    underscoreline(
                      sections: 6,
                      isColor: true,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "36782 24586975",
                          secondText: "Number of E-Ticket",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    underscoreline(
                      sections: 6,
                      isColor: true,
                      width: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/visa.png",
                                  scale: 11,
                                ),
                                Text(
                                  " *** 2462",
                                  style: styles.headLineStyle3,
                                )
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Payment Method",
                              style: styles.headLineStyle4,
                            )
                          ],
                        ),
                        AppColumnLayout(
                            firstText: "\$249.99",
                            secondText: "price",
                            alignment: CrossAxisAlignment.end)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 1,),
              Container(
                decoration: BoxDecoration( color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
               
                padding: EdgeInsets.all(AppLayout.getHeight(15)),
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/abhilash-appu',
                    drawText: false,
                    color: styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
              TicketView(tickets: ticketList[0])
            ],
          ),
          Center(
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                 
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: styles.textColor,width: 2.5)
                  ),
                ),
                Container(
                 
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: styles.textColor,width: 2.5)
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
