import 'package:flutter/material.dart';

class QuizGame extends StatefulWidget {
  @override
  _QuizGameState createState() => _QuizGameState();
}

class _QuizGameState extends State<QuizGame> {
  final List<String> words = ["VODOROD", "LITIY", "GELIY", "KISLOROD"];
  late String currentWord;
  late List<String> scrambledWord;
  List<String?> guessedWord = [];
  int attemptsLeft = 4;

  @override
  void initState() {
    super.initState();
    startNewGame();
    currentWord = (words..shuffle()).first;
  }

  void startNewGame() {
    setState(() {
      currentWord = (words..shuffle()).first;
      scrambledWord = currentWord.split('')..shuffle();
      guessedWord = List.filled(currentWord.length, null);
      attemptsLeft = 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    double containerSize = currentWord.length > 6 ? 30 : 40;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/quizBackground.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(currentWord.length, (index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    DragTarget<String>(
                      builder: (context, candidateData, rejectedData) {
                        return Container(
                          width: containerSize,
                          height: containerSize,
                          margin: EdgeInsets.all(4.0),
                          color: guessedWord[index] == null
                              ? Colors.grey[300]
                              : Colors.green,
                          child: Center(
                            child: Text(
                              guessedWord[index] ?? '',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        );
                      },
                      onAccept: (data) {
                        setState(() {
                          guessedWord[index] = data;
                          if (guessedWord[index] != currentWord[index]) {
                            attemptsLeft--;
                            guessedWord[index] = null;
                          } else {
                            scrambledWord.remove(data);
                          }
                        });
                      },
                    ),
                  ],
                );
              }),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: scrambledWord.map((letter) {
                return Draggable<String>(
                  data: letter,
                  feedback: Material(
                    child: Container(
                      width: containerSize,
                      height: containerSize,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          letter,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  childWhenDragging: Container(
                    width: containerSize,
                    height: containerSize,
                    margin: EdgeInsets.all(4.0),
                    color: Colors.blue.withOpacity(0.5),
                    child: Center(
                      child: Text(
                        letter,
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                  child: Container(
                    width: containerSize,
                    height: containerSize,
                    margin: EdgeInsets.all(4.0),
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        letter,
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Attempts left: $attemptsLeft',
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
            if (attemptsLeft == 0)
              Text(
                'Game Over',
                style: TextStyle(fontSize: 24, color: Colors.red),
              ),
            if (guessedWord.join() == currentWord)
              Text(
                'You Won!',
                style: TextStyle(fontSize: 24, color: Colors.green),
              ),
            ElevatedButton(
              onPressed: startNewGame,
              child: Text('Start New Game'),
            ),
          ],
        ),
      ),
    );
  }
}
