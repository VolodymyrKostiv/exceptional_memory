import 'package:exceptional_memory/user_poems_library/models/libpoem.dart';
import 'package:flutter/material.dart';

class PoemCard extends StatelessWidget {
  final LibPoem poem;

  const PoemCard({Key? key, required this.poem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(poem.author),
              subtitle: Text(poem.title),
            ),
            Text(poem.learnStatus)
          ],
        ),
      ),
    );
  }
}
