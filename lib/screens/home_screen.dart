import 'package:events/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pages/bible_page.dart';
import '../pages/donation_page.dart';
import '../pages/feature_page.dart';
import '../pages/podcast_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const MyHomePage(),
    const MyBiblePage(),
    const MyDonationPage(),
    const MyPodcastPage(),
    const MyFeaturePage(),
  ];

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
                _launchURL(Uri.encodeFull(
                    "https://tithe.ly/give_new/www/#/tithely/give-one-time/5885035"));
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
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        elevation: 0,
        onTap: onTabTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Bible',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_outlined),
            label: 'Donations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.podcasts),
            label: 'Podcasts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Features',
          ),
        ],
      ),
    );
  }

//on tap functionality
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 2) {
        // Show the dialog when the second item is clicked
        _showDialog();
      }
    });
  }
}
