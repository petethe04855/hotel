import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Widget chWidget;
  final Color colorWidget;
  final double cir;
  final double conHeight;
  final double conWidth;
  const ContainerWidget({
    required this.chWidget,
    required this.colorWidget,
    required this.conHeight,
    required this.conWidth,
    required this.cir,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: conHeight,
      width: conWidth,
      decoration: BoxDecoration(
        color: colorWidget,
        borderRadius: BorderRadius.all(
          Radius.circular(cir),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: chWidget,
      ),
    );
  }
}
