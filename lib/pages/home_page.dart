// ignore: file_names
import 'package:events/extraPages/contact_page.dart';
import 'package:events/extraPages/events_announcements.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                _launchURL("www.impactcentre.org.au");
              },
              child: const Text('Open'),
            ),
          ],
        );
      },
    );
  }

  void _homeWebsite() {
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
                _launchURL("www.impactcentre.org.au");
              },
              child: const Text('Open'),
            ),
          ],
        );
      },
    );
  }

  void _jesusWebsite() {
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
                _launchURL("www.bible.com");
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
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 10, 45),
                    child: Text(
                      "We make relevant disciples for Christ and raise Kingdom advancers",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Image.asset(
              'assets/logo1.png',
              height: 300,
              width: 250,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const EventsAnnouncement()), // Replace YourNextPage with the actual page you want to navigate to
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.black, // Set the background color here
                      foregroundColor: Colors.white, // Set the text color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Set border radius
                      ),
                    ),
                    child: const Text("Connect"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _homeWebsite();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.black, // Set the background color here
                      foregroundColor: Colors.white, // Set the text color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Set border radius
                      ),
                    ),
                    child: const Text("Website"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ContactPage()), // Replace YourNextPage with the actual page you want to navigate to
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.black, // Set the background color here
                      foregroundColor: Colors.white, // Set the text color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Set border radius
                      ),
                    ),
                    child: const Text("Contact Us"),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _jesusWebsite();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.black, // Set the background color here
                      foregroundColor: Colors.white, // Set the text color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Set border radius
                      ),
                    ),
                    child: const Text("Jesus Christ"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _jesusWebsite();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.black, // Set the background color here
                      foregroundColor: Colors.white, // Set the text color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Set border radius
                      ),
                    ),
                    child: const Text("Sermons"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.black, // Set the background color here
                      foregroundColor: Colors.white, // Set the text color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Set border radius
                      ),
                    ),
                    child: const Text("Events"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
