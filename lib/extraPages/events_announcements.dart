import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'admin_login_page.dart';

class EventsAnnouncement extends StatefulWidget {
  const EventsAnnouncement({super.key});

  @override
  State<EventsAnnouncement> createState() => _EventsAnnouncementState();
}

class _EventsAnnouncementState extends State<EventsAnnouncement> {
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
              'Events and Announcements',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            EventCard(
              imageAsset: 'assets/img1.jpg',
              date: 'Date: September 10, 2023',
              time: 'Time: 2:00 PM - 4:00 PM',
              location: 'Location: Event Hall 1',
            ),
            EventCard(
              imageAsset: 'assets/img2.jpg',
              date: 'Date: October 5, 2023',
              time: 'Time: 3:30 PM - 5:30 PM',
              location: 'Location: Conference Room A',
            ),
            EventCard(
              imageAsset: 'assets/img3.jpg',
              date: 'Date: October 5, 2023',
              time: 'Time: 3:30 PM - 5:30 PM',
              location: 'Location: Conference Room C',
            ),
            EventCard(
              imageAsset: 'assets/img4.jpg',
              date: 'Date: October 5, 2023',
              time: 'Time: 3:30 PM - 5:30 PM',
              location: 'Location: Conference Room D',
            ),
            Center(
              child: ElevatedButton(
                child: const Text("Logout"),
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    print("Signed Out");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdminLogin()));
                  });
                },
              ),
            )
            // Add more EventCard widgets as needed
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String imageAsset;
  final String date;
  final String time;
  final String location;

  EventCard({
    required this.imageAsset,
    required this.date,
    required this.time,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            imageAsset,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              date,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(time),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(location),
          ),
        ],
      ),
    );
  }
}
