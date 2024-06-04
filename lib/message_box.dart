import 'package:chemistry/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = "All Words Completed";
    String buttonText = "Replay";

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
      backgroundColor: Colors.amber,
      title: Text(
        title,
        style: TextStyle(
            fontFamily: "Confetti", fontSize: 50, fontWeight: FontWeight.bold),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            )),
            onPressed: () {
              Provider.of<Controller>(context, listen: false).resetGame();
              Navigator.pop(context);
            },
            child: Text(
              buttonText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
      ],
    );
  }
}
