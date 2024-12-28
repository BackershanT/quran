import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:quran/src/application/ayah_resp/ayah_resp_bloc.dart';
import 'package:quran/src/application/chapters_list/chapters_list_bloc.dart';
import 'package:quran/src/core/themes/theme.dart';
import 'package:quran/src/domain/core/di/injectable.dart';

import 'presentation/home_page/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ///flutter_native_splash
  @override
  void initState() {
    super.initState();
    initializion();
  }

  void initializion() async {
    print('pausing.....');
    await Future.delayed(Duration(seconds: 3));
    print('unPausing...');
    FlutterNativeSplash.remove();
  }

  ///

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (ctx) => getIt<ChaptersListBloc>()),
          BlocProvider(create: (ctx) => getIt<AyahRespBloc>()),
        ],
        child: MaterialApp(
          title: 'Quran',
          debugShowCheckedModeBanner: false,
          theme: lightMode,
          darkTheme: darkMode,
          routes: {
            // '/homepage':(context)=>const HomePageMain(),
            // '/quranlist':(context)=> QuranListPage(),
          },
          home: HomePage(),
        ));
  }
}
