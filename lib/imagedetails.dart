import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'dart:io';

import 'package:share_plus/share_plus.dart';
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
               const SizedBox(
                  width: 20,
                ),
                 IconButton(
                  icon: Icon(Icons.download),
                  iconSize: 40,
                    onPressed:_downloadImage,
                ),
                SizedBox(
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
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: (isFavourited
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_outline)),
                  iconSize: 40,
                  onPressed: () {

                    var snackBar = SnackBar(content: Text('Added to favourites.'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    setState(() {
                      isFavourited = !isFavourited;
                    }
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

// void downloadimg() async {
//   String url="https://images.unsplash.com/photo-1681115477083-49332c50913e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=438&q=80";
//   try {
//     var imageId = await GallerySaver.saveImage(url);
//     if (imageId == null) {
//       return;
//     }
//   } on PlatformException catch (error) {
//     print(error);
//   }
// }

//
// _saveNetworkImage() async {
//   var response = await Dio().get(
//       "https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=a62e824376d98d1069d40a31113eb807/838ba61ea8d3fd1fc9c7b6853a4e251f94ca5f46.jpg",
//       options: Options(responseType: ResponseType.bytes));
//   final result = await ImageGallerySaver.saveImage(
//       Uint8List.fromList(response.data),
//       quality: 60,
//       name: "hello");
//   print(result);
// }

void _downloadImage() async {
  var imagePath = 'assets/images/';
  try {
    // Get the image bytes.
    final bytes = await rootBundle.load(imagePath);
    // Save the image bytes to the device.
    final directory = await getApplicationDocumentsDirectory();
    final path = await File('${directory.path}/').create();
    path.writeAsBytes(bytes as List<int>);

    // Show a snackbar to indicate that the image has been downloaded.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Image downloaded successfully.')),
    );
  } catch (e) {
    // Show a snackbar to indicate that the image download failed.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Failed to download image.')),
    );
  }
}
}
