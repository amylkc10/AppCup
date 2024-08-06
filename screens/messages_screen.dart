
import 'package:flutter/material.dart';
import 'package:medisync/widgets/chatsample.dart';


class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child:AppBar(
          backgroundColor: Colors.teal,
          leadingWidth: 30,
          title: Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "AI chatbot",
                style: TextStyle(
                  color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 2,
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
        itemBuilder: (context, index) => Chatsample(),
      ),
      bottomSheet:Container(
        height:65,
        decoration:  BoxDecoration(
          color:Colors.white,
          boxShadow:[
            BoxShadow(
              color:Colors.black12,
              spreadRadius: 2,
              blurRadius: 10
            )
          ],
        ),
        child:Row(
          children:[
            Padding(padding: EdgeInsets.only(left:10),
            child:Container(alignment: Alignment.centerRight,
            width:MediaQuery.of(context).size.width / 1.5,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Type Something",
                border:InputBorder.none,
                ),
              ),
            ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right:10),
              child:Icon(
                Icons.send,
                size:30,
                color: Color.fromARGB(255, 0, 150, 150),
              )
            )
          ],
        )
        )
    );
  }
}
