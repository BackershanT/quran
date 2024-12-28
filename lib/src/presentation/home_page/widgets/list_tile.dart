import 'package:flutter/material.dart';
import 'package:quran/src/core/constants/colors.dart';

class QuranListTile extends StatelessWidget {
  const QuranListTile({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: ListTile(
            onTap: onTap,
            leading: CircleAvatar(
              child: Image.asset('assets/logo/abc.png'),
            ),
            // trailing: Icon(Icons.info_outline),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: CustomColor.tileBorderColor),
            ),
            tileColor: CustomColor.bgColor,
            title: Text(
              title,
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            )));
  }
}
