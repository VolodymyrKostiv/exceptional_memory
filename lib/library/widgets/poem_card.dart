import 'package:exceptional_memory/library/models/poem_model.dart';
import 'package:flutter/material.dart';

class PoemCard extends StatelessWidget {
  final Poem poem;

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
