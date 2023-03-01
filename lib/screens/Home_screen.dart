import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sample_programming/screens/Ticket_view.dart';
import 'package:sample_programming/screens/hotel_screen.dart';
import 'package:sample_programming/screens/utilities/App_info_list.dart';
import 'package:sample_programming/screens/utilities/App_styles.dart';
import 'package:sample_programming/widgets/double_text_widget.dart';

class Homescreen extends StatelessWidget {
  
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.backGroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Good Morning",
                          style: styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // ignore: prefer_const_constructors
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: const AssetImage("assets/images/img_1.png"),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 5.0),
                  decoration: BoxDecoration(
                      color: const Color(0XFFF4F6FD),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                appDoubleTextWidget(text: "Upcoming tickets")
              ],
            ),
          ),
          const Gap(15),
         SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(tickets: singleTicket)).toList(),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: appDoubleTextWidget(text: "Hotels")
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 16),
            child:Row(
              children: hotelList.map((singleHotel) => hotelView(hotel: singleHotel)).toList()
            ) ,
          ),
        ],
      ),
    );
  }
}
