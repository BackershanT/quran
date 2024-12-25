import 'package:flutter/material.dart';

class QuranDetailedPage extends StatelessWidget {
  const QuranDetailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios_new),onPressed: (){Navigator.pop(context);} ,),
        title: Text('data'),
        centerTitle: true,
      ),
      body: ListView(children: [

      ],),
    );
  }
}
