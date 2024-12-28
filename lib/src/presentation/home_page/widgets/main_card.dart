import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.mainCardImage});
  final String mainCardImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(14),
        child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(mainCardImage),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
              color: CustomColor.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(4, 4),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            )));
  }
}
