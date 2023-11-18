import 'package:flutter/material.dart';

class IndicatorWidget extends StatelessWidget {
  final bool imageSide;
  const IndicatorWidget({
    required this.imageSide,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: imageSide ? 22.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: imageSide ? Colors.amber : Colors.grey,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
