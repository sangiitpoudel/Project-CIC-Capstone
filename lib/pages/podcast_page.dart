import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPodcastPage extends StatefulWidget {
  const MyPodcastPage({super.key});

  @override
  State<MyPodcastPage> createState() => _MyPodcastPageState();
}

class _MyPodcastPageState extends State<MyPodcastPage> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Can not launch URL";
    }
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Open In Browser'),
          content: const Text(
              'This will open you in browser. Would you like to continue'),
          actions: <Widget>[
            //close section
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
            //open specific url
            TextButton(
              onPressed: () {
                _launchURL("www.spotify.com");
              },
              child: const Text('Open'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
            child: Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text(
            'PODCAST',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )),
      ),
      body: GestureDetector(
        onTap: _showDialog,
        child: Center(
          child: Image.asset(
            'assets/spotify.png',
            height: 300,
            width: 250,
          ),
        ),
      ),
    );
  }
}
