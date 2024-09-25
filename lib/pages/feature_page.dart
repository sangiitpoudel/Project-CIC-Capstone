import 'package:events/extraPages/admin_login_page.dart';
import 'package:events/extraPages/contact_page.dart';
import 'package:events/extraPages/events_announcements.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../extraPages/gallery_page.dart';

class MyFeaturePage extends StatefulWidget {
  const MyFeaturePage({super.key});

  @override
  State<MyFeaturePage> createState() => _MyFeaturePageState();
}

class _MyFeaturePageState extends State<MyFeaturePage> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
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
                _launchURL(Uri.encodeFull("https://www.impactcentre.org.au"));
              },
              child: const Text('Open'),
            ),
          ],
        );
      },
    );
  }

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
                _launchURL(Uri.encodeFull("https://www.impactcentre.org.au/"));
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
              'CHRISTIAN IMPACT CENTRE',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              child: GestureDetector(
                onTap: () {
                  // Navigate to the desired page here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ContactPage()), // Replace YourNextPage with the actual page you want to navigate to
                  );
                },
                child: Container(
                    height: 97,
                    color: const Color.fromARGB(210, 236, 235, 243),
                    child: const Row(
                      children: [
                        Icon(
                          color: Colors.black,
                          Icons.call,
                          size: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                          child: Text(
                            "Contact",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              child: GestureDetector(
                onTap:
                    // Navigate to the desired page here
                    _showDialog,
                child: Container(
                    height: 97,
                    color: Colors.white,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.web,
                          size: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                          child: Text(
                            "Website",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              child: GestureDetector(
                onTap: () {
                  // Navigate to the desired page here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const EventsAnnouncement()), // Replace YourNextPage with the actual page you want to navigate to
                  );
                },
                child: Container(
                    height: 97,
                    color: const Color.fromARGB(210, 236, 235, 243),
                    child: const Row(
                      children: [
                        Icon(
                          color: Colors.black,
                          Icons.event,
                          size: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                          child: Text(
                            "Events & Announcements",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              child: GestureDetector(
                onTap: () {
                  // Navigate to the desired page here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const GalleryPage()), // Replace YourNextPage with the actual page you want to navigate to
                  );
                },
                child: Container(
                  height: 97,
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.image,
                        size: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                        child: Text(
                          "Gallery",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              child: GestureDetector(
                onTap: _showDialog1,
                child: Container(
                    height: 97,
                    color: const Color.fromARGB(210, 236, 235, 243),
                    child: const Row(
                      children: [
                        Icon(
                          color: Colors.black,
                          Icons.person,
                          size: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                          child: Text(
                            "Connect",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              child: GestureDetector(
                onTap: () {
                  // Navigate to the desired page here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const AdminLogin()), // Replace YourNextPage with the actual page you want to navigate to
                  );
                },
                child: Container(
                    height: 97,
                    color: Colors.white,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.lock_person,
                          size: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                          child: Text(
                            "Admin Login",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ],
        ));
  }
}
