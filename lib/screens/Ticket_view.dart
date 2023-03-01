import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:sample_programming/screens/utilities/App_Layout.dart';
import 'package:sample_programming/screens/utilities/App_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_programming/widgets/layout_builder.dart';
import 'package:sample_programming/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic>tickets;
  final bool? isColor;
  const TicketView({super.key,required this.tickets,this.isColor});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(165),
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor==null?Color(0XFF526799):Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        tickets['from']['code'],
                        style:
                            isColor==null?styles.headLineStyle3.copyWith(color: Colors.white):styles.headLineStyle3,
                      ),
                      const Spacer(),
                      const ThickContainer(isColor: true,),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(builder:
                                  (BuildContext context,
                                      BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) =>  Text("-",
                                        style: TextStyle(
                                          color:isColor==null? Colors.white :Colors.grey,
                                        )),
                                  ),
                                );
                              }),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child:  Icon(
                                  Icons.local_airport_rounded,
                                  color:isColor==null? Colors.white:Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(isColor: true,),
                      const Spacer(),
                      Text(
                        tickets['to']['code'],
                        style:isColor==null?
                            styles.headLineStyle3.copyWith(color: Colors.white):styles.headLineStyle3,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Row(
                    children: [
                      Text(
                        tickets['from']['name'],
                        style:isColor==null? styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ):styles.headLineStyle4
                      ),
                      const Spacer(),
                      Text(
                        tickets['flying_time'],
                        style: isColor==null? styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ):styles.headLineStyle4
                      ),
                      const Spacer(),
                      Text(
                        tickets['to']['name'],
                        style:isColor==null? styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ):styles.headLineStyle4
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color:isColor==null? Color(0XFFF37B67):Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:isColor==null? Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(12)),
                      child: underscoreline(sections: 15,)
                    ),
                  ),
                   SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:isColor==null? Colors.grey.shade200:Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color:isColor==null? styles.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor==null?AppLayout.getHeight(21):0),
                  bottomRight: Radius.circular(isColor==null?AppLayout.getHeight(21):0),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tickets['date'],
                        style:
                            isColor==null? styles.headLineStyle3.copyWith(color: Colors.white):styles.headLineStyle3,
                      ),
                      const Gap(3),
                      Text(
                        "Date",
                        style:
                            isColor==null? styles.headLineStyle4.copyWith(
                          color: Colors.white):styles.headLineStyle4,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        tickets['departure_time'],
                        style:
                            isColor==null? styles.headLineStyle3.copyWith(color: Colors.white):styles.headLineStyle3,
                      ),
                      const Gap(3),
                      Text(
                        "Departure Time",
                        style:
                            isColor==null? styles.headLineStyle4.copyWith(
                          color: Colors.white):styles.headLineStyle4,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        tickets['number'].toString(),
                        style:
                            isColor==null? styles.headLineStyle3.copyWith(color: Colors.white):styles.headLineStyle3
                      ),
                      const Gap(3),
                      Text(
                        "Number",
                        style:
                            isColor==null? styles.headLineStyle4.copyWith(
                          color: Colors.white):styles.headLineStyle4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
