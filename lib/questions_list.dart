import 'package:flutter/material.dart';
import 'answers_list.dart';
import 'appdata.dart';

class QuestionsList extends StatefulWidget {
  const QuestionsList({Key? key}) : super(key: key);

  @override
  State<QuestionsList> createState() => _QuestionsListState();
}

class _QuestionsListState extends State<QuestionsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(15, 53, 73, 1),
        title: const Text("Flutter Questions"),
      ),
      body: ListView.builder(
        itemCount: appDataList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AnswersList(),
                  settings: RouteSettings(
                    arguments: index,
                  ),
                ),
              );
            },
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                appDataList[index].question,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
