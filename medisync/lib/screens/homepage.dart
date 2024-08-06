import 'package:flutter/material.dart';
import '/screens/medication_screen.dart';
import '/screens/messages_screen.dart';

class Homepage extends StatelessWidget {
  List medications = [
    "Panadol",
    "Spasfon",
    "Accutane",
    "Cough Sirop",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("Hello User!",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500)),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "List of medications:",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
              height: 800,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: medications.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MedicationScreen()));
                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 25),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(100, 0, 128, 128),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              medications[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                          )));
                },
              ),
            ),
        ],
      ),
    );
  }
}
