import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class underscoreline extends StatelessWidget {
  const underscoreline({super.key,this.isColor,required this.sections,this.width=3});
  final bool? isColor;
  final int sections;
  final double width;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / sections).floor(),
                              (index) =>  SizedBox(
                                width: width,
                                height: 1,
                                child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color:isColor==null? Colors.white:Colors.grey.shade300),
                                ),
                              ),
                            ),
                          );
                        },
                      );
  }
}