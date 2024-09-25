import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final List<String> imageUrls = [
    'https://www.impactcentre.org.au/wp-content/uploads/2021/12/PHOTO-2021-06-19-23-02-41-300x169.jpg',
    'https://www.impactcentre.org.au/wp-content/uploads/2021/12/PHOTO-2021-07-18-16-09-41-1.jpg',
    'https://www.impactcentre.org.au/wp-content/uploads/2021/12/PHOTO-2021-07-27-07-42-03.jpg',
    'https://www.impactcentre.org.au/wp-content/uploads/2021/12/PHOTO-2021-04-11-21-50-03.jpg',
    'https://www.impactcentre.org.au/wp-content/uploads/2021/12/PHOTO-2021-08-09-07-49-38-2.jpg',
    'https://www.impactcentre.org.au/wp-content/uploads/2021/12/PHOTO-2021-07-18-16-11-04.jpg',
    'https://www.impactcentre.org.au/wp-content/uploads/2021/12/PHOTO-2021-07-18-16-10-29-2.jpg',
    'https://www.impactcentre.org.au/wp-content/uploads/2021/12/1ef524f1-bdf4-4596-b40b-25740f38cd5d.jpg'
  ];
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
                'Gallery Page',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
          ),
          itemCount: imageUrls.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Handle image tap (e.g., show full-screen image)
                // You can navigate to a new screen or show a dialog with the image.
                // For simplicity, let's just print the tapped image URL here.
                print('Tapped image: ${imageUrls[index]}');
              },
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ));
  }
}
