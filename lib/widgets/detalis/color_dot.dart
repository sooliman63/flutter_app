import 'package:flutter/material.dart';

import 'package:store_app/constants.dart';

class Colordot extends StatelessWidget {
  const Colordot({
    Key? key,
    required this.fillColor,
    this.isSelctor = false,
  }) : super(key: key);
  final Color fillColor;
  final bool isSelctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2.5,
      ),
      padding: const EdgeInsets.all(3.0),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelctor ? kTextLightColor : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor, //color is
        ),
      ),
    );
  }
}
