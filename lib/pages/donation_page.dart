import 'package:flutter/material.dart';

class MyDonationPage extends StatefulWidget {
  const MyDonationPage({super.key});

  @override
  State<MyDonationPage> createState() => _MyDonationPageState();
}

class _MyDonationPageState extends State<MyDonationPage> {
//adding some code to show dialog
  

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
      body: const Center(
        child: Text(''),
      ),
    );
  }
}
