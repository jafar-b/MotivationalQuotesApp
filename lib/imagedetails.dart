import 'package:flutter/material.dart';

class ImageDetailsScreen extends StatefulWidget {
  final String imagePath;
  bool isFavourited = false;
  ImageDetailsScreen({Key? key, required this.imagePath}) : super(key: key);
  @override
  State<ImageDetailsScreen> createState() => _ImageDetailsScreenState();
}
class _ImageDetailsScreenState extends State<ImageDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var isFavourited = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              width: double.infinity,
              widget.imagePath,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                ),
                IconButton(
                  icon: Icon(Icons.download),
                  iconSize: 40,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  iconSize: 40,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: isFavourited
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_outline),
                  iconSize: 40,
                  onPressed: () {
                    setState(() {
                      isFavourited = !isFavourited;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}