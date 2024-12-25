import 'package:flutter/material.dart';
import 'package:quran/src/core/constants/colors.dart';
import 'package:quran/src/presentation/home_page/quran_list_page.dart';
import 'package:quran/src/presentation/home_page/widgets/main_card.dart';
import 'package:quran/src/presentation/home_page/widgets/main_grid_view_home.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: CustomColor.bgColor,

      body: ListView(
        children: [
          MainCard(mainCardImage: 'assets/logo/one.png',),
          Column(
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  MainGridViewHome(titleCard: 'Quran', bgImage: 'assets/logo/two.png', avatarImage: 'assets/logo/two.png',
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuranChapterList()),
                        );
                      }),
                  MainGridViewHome(titleCard: 'Adan', bgImage: 'assets/logo/logo.png', avatarImage: 'assets/logo/logo.png', onTap: (){},),

                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  MainGridViewHome(titleCard: 'Dikr & Dua', bgImage: 'assets/logo/three.png', avatarImage: 'assets/logo/three.png',
                      onTap:(){}),
                  // MainGridViewHome(titleCard: 'akjsd', bgImage: 'assets/logo/logo.png', avatarImage: 'assets/logo/logo.png', onTap: (){},),

                ],
              ),


            ],
          )
        ],
      ),
    );
  }
}
