import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

  List<String> ytLingks = ["https://youtu.be/Encpl0HNCb0","https://youtu.be/nEw7w2_qJuo","https://youtu.be/wXYtpL-NitI", "https://youtu.be/Q-dq5eGSRQY" ,"https://youtu.be/Q0i7ZKfX_6k","https://youtu.be/YAVtdZ5d1AU", "https://youtu.be/RPmG7kCa_Bo","https://youtu.be/gA_CzXt1GtA","https://youtu.be/RCBQj9EFlI4"];
  List<String> thumbnail = ["PostArt.png","AfterSchool.png","Fantastic5.png","Kiez.png","OrchestralDriving.png","Safaga.png","Schwarm.png","Sonnengesaenge.png","Subito.png"];

void main() {
  runApp(MeineApp());
}

Padding myPaddingElement(int index) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
              launch(ytLingks[index]); // your desired URL
              //launch('https://www.google.com'); // Replace with your desired URL
            },
            child: Container(
              width: 160,
              height: 90,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
                boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(3, 5), // Changes the position of the shadow
              ),
            ],
            image: DecorationImage(
              //String imLink="assets/images/"+thumbnail[index-1];
              image: AssetImage("assets/images/"+thumbnail[index]),
              fit: BoxFit.cover,
            )
              //color: Colors.green,
              /*child: Center(
                child: Text(
                  'Click me!',
                  style: TextStyle(color: Colors.white),
                ),
              ),*/
            ),
    )
    /*Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            image: DecorationImage(
              image: AssetImage("assets/images/image$index.png"),
              fit: BoxFit.cover,
            ))),*/
  ));
}

class MeineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeinHintergrundScreen(),
    );
  }
}

class MeinHintergrundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/hintergrundbild.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                myPaddingElement(0),
                myPaddingElement(1),
                myPaddingElement(2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                myPaddingElement(3),
                myPaddingElement(4),
                myPaddingElement(5),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                myPaddingElement(6),
                myPaddingElement(7),
                myPaddingElement(8),
              ],
            ),

           ]
        )
        /*child: Center(
          child: Text(
            'Willkommen zur Beispiel-App!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),*/
      ),
    );
  }
}
