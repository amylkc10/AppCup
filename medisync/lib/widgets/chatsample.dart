import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class Chatsample extends StatelessWidget {
  const Chatsample({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right:80),
        child : ClipPath(
          clipper: UpperNipMessageClipper(MessageType.receive),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration:BoxDecoration(
              color: Colors.grey,
            ),
            child:Text(
              "Hello there!",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              )
            )
          ),
        ),
        ),
        Container(
          alignment:Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top:20,left:80),
            child : ClipPath(
              clipper: UpperNipMessageClipper(MessageType.send),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration:BoxDecoration(
                  color: Colors.teal,
                ),
                child:Text(
                  "Hello!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                  )
                )
              ),
            ),
          )
        )
      ],
    );
  }
}
