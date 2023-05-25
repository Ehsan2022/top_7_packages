import 'package:flutter/material.dart';
import 'package:tob_seven/classes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TopSeven(),
  ));
}

class TopSeven extends StatefulWidget {
  const TopSeven({Key? key}) : super(key: key);

  @override
  State<TopSeven> createState() => _TopSevenState();
}

class _TopSevenState extends State<TopSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 126, 122, 122),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Top 7 Packages',
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Text(
              'Font Awesome',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: Icon(
              Icons.font_download,
              size: 50,
              color: Colors.black,
            ),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Font()));
              });
            },
          ),
          Divider(),
          ListTile(
            leading: Text(
              'Toast',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: Icon(
              Icons.sim_card_alert_sharp,
              size: 50,
              color: Colors.black,
            ),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Toast()));
              });
            },
          ),
          Divider(),
          ListTile(
            leading: Text(
              'Alert',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: Icon(
              Icons.add_alert,
              size: 50,
              color: Colors.black,
            ),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => rflu()));
              });
            },
          ),
          Divider(),
          ListTile(
            leading: Text(
              'English Words',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: Icon(
              Icons.abc_sharp,
              size: 50,
              color: Colors.black,
            ),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Words()));
              });
            },
          ),
          Divider(),
          ListTile(
            leading: Text(
              'Text To Speech',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: Icon(
              Icons.volume_up,
              size: 50,
              color: Colors.black,
            ),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RandomeWord()));
              });
            },
          ),
          Divider(),
          ListTile(
            leading: Text(
              'Audio Player',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: Icon(
              Icons.multitrack_audio_outlined,
              size: 50,
              color: Colors.black,
            ),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Audio()));
              });
            },
          ),
          Divider(),
          ListTile(
            leading: Text(
              'Photo View',
              style: TextStyle(fontSize: 20.0),
            ),
            trailing: Icon(
              Icons.photo,
              size: 50,
              color: Colors.black,
            ),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Photo()));
              });
            },
          ),
          Divider(),

        ],
      ),
    );
  }
}
