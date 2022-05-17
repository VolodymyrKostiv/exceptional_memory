import 'package:exceptional_memory/poem_api_library/services/poem_api_service.dart';
import 'package:exceptional_memory/poem_api_library/widgets/poem_api_card.dart';
import 'package:flutter/material.dart';

import '../models/api_poem.dart';
import 'poem_api_page.dart';

class PoemAPILib extends StatefulWidget {
  const PoemAPILib({Key? key}) : super(key: key);

  @override
  _PoemAPILibState createState() => _PoemAPILibState();
}

class _PoemAPILibState extends State<PoemAPILib> {
  final pageName = "Library";

  List<APIPoem> _poems = [];
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
      body: _poems.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              controller: _scrollController,
              itemCount: _poems.length,
              itemBuilder: (
                context,
                index,
              ) {
                return GestureDetector(
                  onTap: (() => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PoemAPIPage(
                              poem: _poems[index],
                            ),
                          ),
                        ),
                      }),
                  child: PoemAPICard(
                    poem: _poems[index],
                  ),
                );
              },
            ),
    );
  }
}
