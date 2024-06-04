import 'package:chemistry/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Drag extends StatefulWidget {
  Drag({
    required this.letter,
    Key? key,
  }) : super(key: key);

  final String letter;

  @override
  State<Drag> createState() => _DragState();
}

class _DragState extends State<Drag> {
  bool _accepted = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Selector<Controller, bool>(
      selector: (_, contoller) => contoller.generateWord,
      builder: (_, generate, __) {
        if (generate) {
          _accepted = false;
        }
        return SizedBox(
          width: size.width * 0.10,
          height: size.height * 0.10,
          child: Center(
            child: _accepted
                ? SizedBox()
                : Draggable(
                    onDragEnd: (details) {
                      if (details.wasAccepted) {
                        _accepted = true;
                        setState(() {});
                        Provider.of<Controller>(context, listen: false)
                            .incrementLetters(context: context);
                      }
                    },
                    childWhenDragging: Container(),
                    data: widget.letter,
                    feedback: Text(
                      widget.letter,
                      style: TextStyle(
                              color: Colors.orange.shade100,
                              fontSize: 40,
                              fontFamily: 'Confetti')
                          .copyWith(shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(0.40),
                            blurRadius: 5)
                      ]),
                    ),
                    child: Text(
                      widget.letter,
                      style: TextStyle(
                          color: Colors.orange.shade100,
                          fontSize: 40,
                          fontFamily: 'Confetti'),
                    ),
                  ),
          ),
        );
      },
    );
  }
}

class Drop extends StatelessWidget {
  const Drop({
    required this.letter,
    Key? key,
  }) : super(key: key);

  final String letter;

  @override
  Widget build(BuildContext context) {
    bool accepted = false;
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.10,
      height: size.height * 0.10,
      child: Center(
        child: DragTarget(onWillAccept: (data) {
          if (data == letter) {
            print("accept");
            return true;
          } else {
            print("reject");

            return false;
          }
        }, onAccept: (data) {
          accepted = true;
        }, builder: (BuildContext context, candidateData, rejectedData) {
          if (accepted) {
            return Text(
              letter,
              style: TextStyle(
                  color: Colors.orange.shade100,
                  fontSize: 40,
                  fontFamily: 'Confetti'),
            );
          } else {
            return Container(
              color: Colors.grey,
              height: 35,
              width: 35,
            );
          }
        }),
      ),
    );
  }
}
