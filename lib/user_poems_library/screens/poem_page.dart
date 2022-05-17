import '../widgets/poem_status_changer.dart';
import 'package:flutter/material.dart';

import '../../boxes.dart';
import '../models/libpoem.dart';
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
          //poem.learnStatus =
          //box.put(key, )
          Navigator.of(context).pop();
        },
      );

      AlertDialog alert = AlertDialog(
        title: const Text(
          "Status",
        ),
        content: const PoemStatusChanger(),
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
      body: PoemText(
        lines: poem.lines,
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
    );
  }
}
