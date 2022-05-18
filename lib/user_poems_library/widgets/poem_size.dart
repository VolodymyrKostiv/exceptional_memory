import 'package:exceptional_memory/user_poems_library/models/poem_font_size_provider.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

class PoemTextSizer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          ButtonTheme(
            minWidth: 50,
            child: OutlinedButton(
              onPressed: () {
                Provider.of<PoemFontSizeProvider>(context, listen: false)
                    .increment();
              },
              child: Text(
                "+",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          ButtonTheme(
            minWidth: 50,
            child: OutlinedButton(
              onPressed: () {
                Provider.of<PoemFontSizeProvider>(context, listen: false)
                    .decrement();
              },
              child: Text(
                "-",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
