import 'dart:developer';

import 'package:exceptional_memory/user_poems_library/helpers/statusStringHelper.dart';
import 'package:provider/provider.dart';

import '../enums/status.dart';
import '../models/poem_font_size_provider.dart';
import 'package:flutter/material.dart';

import '../../boxes.dart';
import '../models/libpoem.dart';
import '../widgets/poem_size.dart';
import '../widgets/poem_text.dart';

class PoemPage extends StatelessWidget {
  final LibPoem poem;

  const PoemPage({Key? key, required this.poem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    showAlertDialog(BuildContext context) {
      TextButton cancelButton = TextButton(
        child: const Text(
          "Cancel",
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
      TextButton continueButton = TextButton(
        child: const Text(
          "Continue",
        ),
        onPressed: () {
          final box = Boxes.getLibPoems();
          var curr = poem.learnStatus;
          if (curr == StatusStringHelper.getStringByStatus(Status.notStarted)) {
            poem.learnStatus =
                StatusStringHelper.getStringByStatus(Status.inProgress);
          } else if (curr ==
              StatusStringHelper.getStringByStatus(Status.inProgress)) {
            poem.learnStatus =
                StatusStringHelper.getStringByStatus(Status.finished);
          }
          box.put(poem.key, poem);
          poem.save();
          Navigator.of(context).pop();
        },
      );

      AlertDialog alert = AlertDialog(
        title: const Text(
          "Change status?",
        ),
        actions: [
          cancelButton,
          continueButton,
        ],
      );

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return ChangeNotifierProvider(
      create: (context) => PoemFontSizeProvider(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          titleTextStyle: Theme.of(context).textTheme.headline2,
          title: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  poem.author,
                ),
                Text(
                  poem.title,
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            PoemTextSizer(),
            PoemText(
              lines: poem.lines,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showAlertDialog(context);
          },
          child: Icon(
            Icons.edit,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
