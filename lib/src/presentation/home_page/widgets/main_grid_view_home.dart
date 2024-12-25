import 'package:flutter/material.dart';
import 'package:quran/src/core/constants/colors.dart';

class MainGridViewHome extends StatelessWidget {
  const MainGridViewHome(
      {super.key,
      required this.titleCard,
      required this.bgImage,
      required this.avatarImage,
      required this.onTap});
  final String titleCard;
  final String bgImage;
  final String avatarImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: GestureDetector(
            onTap:  onTap,
            child: Container(
                height: 200,
                width: 155,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(bgImage),
                      fit: BoxFit.cover,
                      opacity: 0.25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.25), // Shadow color with opacity
                      offset: const Offset(4, 4), // Shadow position (x, y)
                      blurRadius: 10, // Softness of the shadow
                      spreadRadius: 2, // Spread effect of the shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: CustomColor.bgColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              minRadius: 25,
                              child: ClipOval(
                                child: Image.asset(
                                  avatarImage,
                                  fit: BoxFit.fitHeight,
                                  height: 50,
                                  width: 50,
                                ), // Match this with diameter (radius * 2)
                              ),
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                          child: Text(
                            titleCard,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    )
                  ],
                ))));
  }
}
