import 'package:chemistry/all_words.dart';
import 'package:chemistry/message_box.dart';
import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  int totalLetters = 0, lettersAnswered = 0, wordsAnswered = 0;
  bool generateWord = true, sessionCompleted = false;

  setUp({required int total}) {
    lettersAnswered = 0;
    totalLetters = total;
    print(totalLetters);
    notifyListeners();
  }

  incrementLetters({required BuildContext context}) {
    lettersAnswered++;
    if (lettersAnswered == totalLetters) {
      wordsAnswered++;

      if (wordsAnswered == allWords.length) {
        sessionCompleted = true;
        showDialog(context: context, builder: (_) => MessageBox());
      }
      generateWord = true;
      print("completed");
    }
    notifyListeners();
  }

  requesWord({required bool request}) {
    generateWord = request;
    notifyListeners();
  }

  resetGame() {
    sessionCompleted = false;
    wordsAnswered = 0;
    generateWord = true;
  }
}
