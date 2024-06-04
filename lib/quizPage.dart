import 'dart:math';

import 'package:chemistry/all_words.dart';
import 'package:chemistry/controller.dart';
import 'package:chemistry/service/drag_return.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List words = allWords.toList();
  late String word;

  late String dropWord;

  @override
  void initState() {
    final r = Random().nextInt(words.length);
    word = words[r];
    dropWord = word;
    // words.removeAt(r);
    //
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<Controller>(context, listen: false).setUp(total: word.length);
      Provider.of<Controller>(context, listen: false)
          .requesWord(request: false);
    });
    final s = word.characters.toList()..shuffle();
    word = s.join();
    // TODO: implement initState
    super.initState();
  }

  _generateWord() {
    final r = Random().nextInt(words.length);
    word = words[r];
    dropWord = word;
    words.removeAt(r);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<Controller>(context, listen: false).setUp(total: word.length);
      Provider.of<Controller>(context, listen: false)
          .requesWord(request: false);
    });

    final s = word.characters.toList()..shuffle();
    word = s.join();
  }

  @override
  Widget build(BuildContext context) {
    return Selector<Controller, bool>(
      selector: (_, contoller) => contoller.generateWord,
      builder: (_, generate, __) {
        if (generate) {
          if (words.isNotEmpty) {
            _generateWord();
          }
        }
        return SafeArea(
            child: Scaffold(
          body: Column(
            children: [
              Expanded(flex: 2, child: Container(color: Colors.blue.shade900)),
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.blue.shade600,
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: dropWord.characters
                            .map((e) => Drop(letter: e))
                            .toList()),
                    color: Colors.blueGrey,
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.blue.shade300,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: word.characters
                            .map((e) => Drag(
                                  letter: e,
                                ))
                            .toList()
                          ..shuffle()),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue.shade100,
                  )),
            ],
          ),
        ));
      },
    );
  }
}
