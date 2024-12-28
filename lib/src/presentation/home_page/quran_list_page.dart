import 'package:flutter/material.dart';
import 'package:quran/src/application/chapters_list/chapters_list_bloc.dart';
import 'package:quran/src/presentation/home_page/quran_detailed_page.dart';
import 'package:quran/src/presentation/home_page/widgets/list_tile.dart';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuranListPage extends StatelessWidget {
  const QuranListPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      BlocProvider.of<ChaptersListBloc>(context).add(GetQuranChaptersList());
    });
    return BlocBuilder<ChaptersListBloc, ChaptersListState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.hasError) {
          return Center(
            child: Text('Error While Loading $state'),
          );
        } else {
          return ListView.builder(
              itemCount: state.chaptersList.length,
              itemBuilder: (BuildContext context, index) {
                final chapterList = state.chaptersList[index];
                log(chapterList.toString());
                return QuranListTile(
                  title: chapterList.nameArabic ?? 'NO name',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuranDetailedPage(

                              )),
                    );
                  },
                );
              });
          // );
        }
      },
    );
    // );
    //
  }
}

class QuranChapterList extends StatelessWidget {
  const QuranChapterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Chapters'),
          centerTitle: true,
        ),
        body: QuranListPage(
          key: Key('quranListPage'),
        ));
  }
}
