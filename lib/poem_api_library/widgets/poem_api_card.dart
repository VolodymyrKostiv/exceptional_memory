import 'package:exceptional_memory/poem_api_library/models/api_poem.dart';
import 'package:flutter/material.dart';

class PoemAPICard extends StatelessWidget {
  final APIPoem poem;

  const PoemAPICard({Key? key, required this.poem}) : super(key: key);

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
            Text(
              poem.lines.length >= 1 ? poem.lines[0] : "",
            ),
            Text(
              poem.lines.length >= 2 ? poem.lines[1] : "",
            ),
            Text(
              poem.lines.length >= 3 ? poem.lines[2] : "",
            ),
            Text(
              poem.lines.length >= 4 ? poem.lines[3] : "",
            ),
          ],
        ),
      ),
    );
  }
}
