import 'package:exceptional_memory/library/models/poem_model.dart';
import 'package:exceptional_memory/library/widgets/poem_text.dart';
import 'package:flutter/material.dart';

class PoemPage extends StatelessWidget {
  final Poem poem;

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
        onPressed: () {},
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: const Text(
          "Adding text",
        ),
        content: const Text(
          "This text will be added to your texts",
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
          Icons.add,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
