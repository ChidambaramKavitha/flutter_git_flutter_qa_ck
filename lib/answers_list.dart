import 'package:flutter/material.dart';

import 'appdata.dart';

class AnswersList extends StatefulWidget {
  const AnswersList({Key? key}) : super(key: key);

  @override
  State<AnswersList> createState() => _AnswersListState();
}

class _AnswersListState extends State<AnswersList> {
  bool _firstTimeFlag = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (_firstTimeFlag == false) {
      print('---------->once execute');

      _firstTimeFlag = true;

      _selectedIndex = ModalRoute.of(context)!.settings.arguments as int;

      print('----------->Received Index: $_selectedIndex');
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(15, 53, 73, 1),
        title: Text('Flutter Question and Answer'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  appDataList[_selectedIndex].question,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 250,
                  child: Divider(
                    color: Colors.teal,
                  ),
                ),
                Text(
                  appDataList[_selectedIndex].answer,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
