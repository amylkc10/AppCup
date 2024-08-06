import 'package:flutter/material.dart';
import 'package:medisync/widgets/navbar_roots.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding:EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(
                  builder: (context)=> NavBarRoots()
                  ));
              },
              child:Text(
                "SKIP",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 128, 128),
                  fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Text("MediSync",
            style: TextStyle(
              color:Color.fromARGB(255, 0, 128, 128),
              fontSize: 35,
              fontWeight:FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2,
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color:Color.fromARGB(255, 0, 128, 128),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap:(){
                      // Navigator.push(context,MaterialPageRoute(
                      //   builder: (context)=>
                      //   ));
                    },
                    child: Padding(
                      padding: 
                        EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text("Log In", style: TextStyle(
                        color:Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color:Color.fromARGB(255, 0, 128, 128),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap:(){
                      // Navigator.push(context,MaterialPageRoute(
                      //   builder: (context)=>
                      //   ));
                    },
                    child: Padding(
                      padding: 
                        EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text("Sign Up", style: TextStyle(
                        color:Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
