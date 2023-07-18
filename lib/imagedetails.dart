import 'package:favorite_button/favorite_button.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import 'dart:io';
import 'package:share_plus/share_plus.dart';
import 'package:firebase_core/firebase_core.dart';

class ImageDetailsScreen extends StatefulWidget {
  final String imagePath;
  bool isFavourited = false;
  ImageDetailsScreen({Key? key, required this.imagePath}) : super(key: key);
  @override
  State<ImageDetailsScreen> createState() => _ImageDetailsScreenState();
}

class _ImageDetailsScreenState extends State<ImageDetailsScreen> {
  ScreenshotController screenshotController = ScreenshotController();

  

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
            Screenshot(
                controller: screenshotController,
                child: Container(
                  color: Colors.white,
                  child: Image.asset(
                    width: double.infinity,
                    widget.imagePath,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  icon: Icon(Icons.download),
                  iconSize: 40,
                  onPressed: takeScreenShot,
                ),
                const SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  iconSize: 40,
                  onPressed: () async {
                    final shareItems = [
                      'This is my share text',
                      Uri.parse('https://www.example.com'),
                    ];
                    await Share.share(shareItems as String);
                  },
                ),
                const SizedBox(
                  width: 30,
                ),
                 FavoriteButton(valueChanged: (isFavourited){
                   print("Favourited!!!!!");
                   var snackBar =
                        SnackBar(content: Text('Added to favourites.'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                 })
              ],
            ),
          ],
        ),
      ),
    );
  }




  takeScreenShot() {
    _saved(Uint8List image) async {
      final result = await ImageGallerySaver.saveImage(image);
      //savefile(image as String, Random().nextInt(200) as String);
      var snackBar = SnackBar(content: Text('Added to Gallery.'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    screenshotController
        .capture(delay: const Duration(milliseconds: 10))
        .then((Uint8List? image) async {
      _saved(image!);
    });
  }
}
