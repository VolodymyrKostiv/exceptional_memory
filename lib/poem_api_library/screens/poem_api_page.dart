import 'dart:developer';

import 'package:exceptional_memory/poem_api_library/models/api_poem.dart';
import 'package:exceptional_memory/poem_api_library/widgets/poem_api_text.dart';
import 'package:exceptional_memory/user_poems_library/models/libpoem.dart';
import 'package:flutter/material.dart';

import '../../boxes.dart';
import '../../user_poems_library/enums/status.dart';
import '../../user_poems_library/helpers/statusStringHelper.dart';

class PoemAPIPage extends StatelessWidget {
  final APIPoem poem;

  const PoemAPIPage({Key? key, required this.poem}) : super(key: key);

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

      Future addPoemToUserTexts() async {
        final libPoem = LibPoem()
          ..author = poem.author
          ..title = poem.title
          ..lines = poem.lines
          ..linecount = poem.linecount
          ..learnStatus =
              StatusStringHelper.getStringByStatus(Status.notStarted);

        final box = Boxes.getLibPoems();
        box.add(libPoem);
      }

      TextButton continueButton = TextButton(
        child: const Text(
          "Continue",
        ),
        onPressed: () async {
          log("ass");
          await addPoemToUserTexts();
          Navigator.of(context).pop();
        },
      );

      AlertDialog alert = AlertDialog(
        title: const Text(
          "Adding text",
        ),
        content: const Text(
          "This text will be added to your texts",
        ),
        actions: <Widget>[
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

    return Scaffold(
      appBar: AppBar(
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
      body: PoemAPIText(
        lines: poem.lines,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAlertDialog(context);
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
