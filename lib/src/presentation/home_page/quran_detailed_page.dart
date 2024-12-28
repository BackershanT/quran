

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/src/application/ayah_resp/ayah_resp_bloc.dart';

class QuranDetailedPage extends StatelessWidget {
  const QuranDetailedPage({super.key, });


  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      BlocProvider.of<AyahRespBloc>(context).add(GetAyahRespData());
    });
    return BlocBuilder<AyahRespBloc, AyahRespState>(
      builder: (context, state) {
        if (state.isLoading){
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        }else if(state.hasError){
          return Center(
            child: Text('Error While Loading $state'),
          );
        }else {
          log(state.verse.toString());
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text('data'),
              centerTitle: true,
            ),
            body:ListView.builder(itemBuilder: (BuildContext context, index) {
              // log(verseList.toString());
        final verseList = state.verse[index];
        return Text(verseList.textUthmaniSimple.toString() );

        }) );
        }
      },
    );
  }
}
