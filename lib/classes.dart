import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:text_to_speech/text_to_speech.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:photo_view/photo_view.dart';



class Font extends StatefulWidget {
  const Font({Key? key}) : super(key: key);

  @override
  State<Font> createState() => _FontState();
}

class _FontState extends State<Font> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FaIcon(FontAwesomeIcons.at),
              FaIcon(FontAwesomeIcons.asymmetrik),
              FaIcon(FontAwesomeIcons.arrowUpRightFromSquare),
              FaIcon(FontAwesomeIcons.arrowUpFromGroundWater),
              FaIcon(FontAwesomeIcons.arrowsUpDown),
              FaIcon(FontAwesomeIcons.android ),
              FaIcon(FontAwesomeIcons.anglesRight ),
            ],
          ),
        ),
    );
  }
}

class Toast extends StatelessWidget {
  static var LENGTH_LONG;

  const Toast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_LONG,
                    timeInSecForIosWeb: 3,
                    gravity: ToastGravity.CENTER,
                    webShowClose: true,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
                child: Text('toast'))),

    );
  }
}

class rflu extends StatefulWidget {
  const rflu({Key? key}) : super(key: key);

  @override
  State<rflu> createState() => _MyAppState();
}

class _MyAppState extends State<rflu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Alert(
                        context: context,
                        title: "RFLUTTER",
                        desc: "Flutter is awesome.")
                        .show();
                  },
                  child: Text("alert #1")),
              ElevatedButton(
                  onPressed: () {
                    Alert(
                      context: context,
                      type: AlertType.error,
                      title: "RFLUTTER ALERT",
                      desc: "Flutter is more awesome with RFlutter Alert.",
                      buttons: [
                        DialogButton(
                          child: Text(
                            "COOL",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () => Navigator.pop(context),
                          width: 120,
                        )
                      ],
                    ).show();
                  },
                  child: Text("Alert #2")),
              ElevatedButton(onPressed: () {
                Alert(
                  context: context,
                  type: AlertType.warning,
                  title: "RFLUTTER ALERT",
                  desc: "Flutter is more awesome with RFlutter Alert.",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "FLAT",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      color: Color.fromRGBO(0, 179, 134, 1.0),
                    ),
                    DialogButton(
                      child: Text(
                        "GRADIENT",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(116, 116, 191, 1.0),
                        Color.fromRGBO(52, 138, 199, 1.0)
                      ]),
                    )
                  ],
                ).show();
              }, child: Text("Alert #3")),
            ],
          ),
        ),
      ),
    );
  }
}

class Words extends StatelessWidget {
  const Words({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body:  Container(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (c, i) {
              return ListTile(title:
              Text("Noun = ${nouns[i]}        adjective = ${adjectives[i]}"),
              );
            }
        ),
      ),
    );
  }
}

class RandomeWord extends StatelessWidget {
  RandomeWord({Key? key}) : super(key: key);
  var randomAdj = adjectives[Random().nextInt(50)];
  TextToSpeech tts = TextToSpeech();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: GestureDetector(
        onTap: (){
          tts.speak(randomAdj);
        },
        child:  Center(
          child: Text(randomAdj, style:
          TextStyle(fontSize: 50, color:Colors.blue
          ),
          ),
        ),
      ),
    );
  }
}

class Audio extends StatelessWidget {

  Expanded buildExp(Color color,int soundNumber){
    return Expanded(
      child: MaterialButton(
          color: color,
          child: Text('click me'),
          onPressed: (){
            var player = AudioPlayer();
            player.play(AssetSource('note$soundNumber.wav'));
          }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,),
        body: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment:CrossAxisAlignment.stretch ,
                children:[
                  buildExp(Colors.red, 1),
                  buildExp(Colors.orange, 2),
                  buildExp(Colors.yellow, 3),
                  buildExp(Colors.white, 4),
                  buildExp(Colors.lightGreenAccent, 5),
                  buildExp(Colors.lightGreen, 6),
                  buildExp(Colors.green, 7),
                ]
            ),
          ),
        ),
    );
  }
}

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body:
      Container(
          child: PhotoView(
            imageProvider: AssetImage("assets/car1.jpg"),
          )
      ),
    );
  }
}

