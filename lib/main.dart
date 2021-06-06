import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotix ID',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Rancho',
      ),
      home: MyHomePage(title: 'Spotix ID'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
                image: AssetImage("assets/images/spotix_logo_light.png"),
                fit: BoxFit.fitWidth),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 90,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/dp.jpg"),
                radius: 80,
              ),
            ),
            Column(
              children: [
                Text("Akash Muraleedharan",
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.place,
                      color: Colors.white,
                    ),
                    Text(" Trivandrum , Kerala",
                        style: TextStyle(color: Colors.white, fontSize: 26))
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    _launchURL("tel:+917561881631");
                  },
                  child: ImageIcon(AssetImage("assets/images/phone.png"),
                      color: Colors.white, size: 30),
                ),
                TextButton(
                  onPressed: () {
                    _launchURL("https://github.com/akashmuralee");
                  },
                  child: ImageIcon(AssetImage("assets/images/github.png"),
                      color: Colors.white, size: 30),
                ),
                TextButton(
                  onPressed: () {
                    _launchURL("mailto:akashmuralee97@gmail.com");
                  },
                  child: ImageIcon(AssetImage("assets/images/email.png"),
                      color: Colors.white, size: 30),
                ),
                
                ],
            ),
          ],
        ),
      ),
    ));
  }
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
