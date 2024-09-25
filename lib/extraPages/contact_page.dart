import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

//for facebook
  void _showDialog1() {
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
                _launchURL("https://www.facebook.com/CiCAustralia1/");
              },
              child: const Text('Open'),
            ),
          ],
        );
      },
    );
  }

//for youtube
  void _showDialog2() {
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
                _launchURL(
                    "https://www.youtube.com/@christianimpactcentre6311/streams");
              },
              child: const Text('Open'),
            ),
          ],
        );
      },
    );
  }

//for insta
  void _showDialog3() {
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
                _launchURL("https://www.instagram.com/cicperth/");
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            // Go back to the original page
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 45, 0),
            child: Text(
              'Contact Page',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                'assets/banner.jpg',
                height: 260,
                width: double.infinity, // Adjust width as needed
                fit: BoxFit.cover, // Use cover to fill the space
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Address",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                " 47 Furniss Rd, Darch WA 6050, Australia",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Phone",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "+61 8 6400 6636",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "info@impactcenter.org.au",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: _showDialog1,
                    child: const Icon(
                      Icons.facebook,
                      size: 40.0,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: _showDialog2,
                    child: const Icon(
                      Icons.play_arrow,
                      size: 40.0,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: _showDialog3,
                    child: const Icon(
                      Icons.image_outlined,
                      size: 40.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
