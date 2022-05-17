import 'dart:developer';

import 'package:exceptional_memory/library/services/poem_api_service.dart';
import 'package:exceptional_memory/library/widgets/poem_card.dart';
import 'package:flutter/material.dart';

import '../models/poem_model.dart';
import 'poem_page.dart';

class PoemLib extends StatefulWidget {
  const PoemLib({Key? key}) : super(key: key);

  @override
  _PoemLibState createState() => _PoemLibState();
}

class _PoemLibState extends State<PoemLib> {
  final pageName = "Library";

  List<Poem> _poems = [];
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _getDataNTimes(5);

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getDataNTimes(10);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _getDataNTimes(int number) {
    for (int i = 0; i < number; i++) {
      _getData();
    }
  }

  void _getData() async {
    final poem = (await PoemApiService().getRandomPoem());
    setState(() {
      _poems.add(poem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: FittedBox(
          child: Text(
            pageName,
          ),
          fit: BoxFit.fitHeight,
        ),
        titleTextStyle: Theme.of(context).textTheme.headline1,
      ),
      body: _poems == null || _poems!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              controller: _scrollController,
              itemCount: _poems!.length,
              itemBuilder: (
                context,
                index,
              ) {
                return GestureDetector(
                  onTap: (() => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PoemPage(
                              poem: _poems[index],
                            ),
                          ),
                        ),
                      }),
                  child: PoemCard(
                    poem: _poems![index],
                  ),
                );
              },
            ),
    );
  }
}
