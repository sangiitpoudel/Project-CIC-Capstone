import 'package:flutter/material.dart';

class MyBiblePage extends StatefulWidget {
  const MyBiblePage({super.key});

  @override
  State<MyBiblePage> createState() => _MyBiblePageState();
}

class _MyBiblePageState extends State<MyBiblePage> {
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
              'BIBLE',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "GENESIS 1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "The Creation of The World",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                      child: Text(
                          textAlign: TextAlign.justify,
                          "In the a beginning b God created the heavens and the earth. 2 The earth was c without form, and void; and darkness 1 was on the face of the deep. d And the Spirit of God was hovering over the face of the waters.",
                          style: TextStyle(fontSize: 17)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                      child: Text(
                          textAlign: TextAlign.justify,
                          "Then God said, f Let there be g light and there was light. 4 And God saw the light, that it was good; and God divided the light from the darkness. 5 God called the light Day, and the h darkness He called Night. 2 So the evening and the morning were the first day.",
                          style: TextStyle(fontSize: 17)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                      child: Text(
                          textAlign: TextAlign.justify,
                          "Then God said, i Let there be a 3 firmament in the midst of the waters, and let it divide the waters from the waters. 7 Thus God made the firmament, j and divided the waters which were under the firmament from the waters which were k above the firmament; and it was so. 8 And God called the firmament Heaven. So the evening and the morning were the second day.",
                          style: TextStyle(fontSize: 17)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                      child: Text(
                          textAlign: TextAlign.justify,
                          "Then God said, i Let there be a 3 firmament in the midst of the waters, and let it divide the waters from the waters. 7 Thus God made the firmament, j and divided the waters which were under the firmament from the waters which were k above the firmament; and it was so. 8 And God called the firmament Heaven. So the evening and the morning were the second day.",
                          style: TextStyle(fontSize: 17)),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
