import 'dart:math';

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:flutter/services.dart';
import 'package:gallery_saver/files.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'firebaseconfig.dart';
import 'package:screenshot/screenshot.dart';
import 'dart:io';
import 'dart:math';

// import 'package:share_plus/share_plus.dart';


class ImageDetailsScreen extends StatefulWidget {
  final String imagePath;
  bool isFavourited = false;
  ImageDetailsScreen({Key? key, required this.imagePath}) : super(key: key);
  @override
  State<ImageDetailsScreen> createState() => _ImageDetailsScreenState();
}

class _ImageDetailsScreenState extends State<ImageDetailsScreen> {
  ScreenshotController screenshotController = ScreenshotController();
  final ff = firebaseconfig();
  var rng=Random().nextInt(999999);
  @override
  void initState() {
    super.initState();
  }
  @override
    Widget build(BuildContext context) {
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
                    child: Image.network(widget.imagePath),
                    // Image.asset(
                    //   width: double.infinity,
                    //   widget.imagePath,
                    // ),

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
                       final imgUrl=widget.imagePath;
                       final Uri url=Uri.parse(imgUrl);
                       final response =await get(url);
                       final bytes=response.bodyBytes;
                       final temp=await getTemporaryDirectory();
                       final path='${temp.path}/image.jpg';
                       final file = File(path);
                       file.writeAsBytes(bytes);
                       final filePath = File(path).path;
                       final xFile = XFile(filePath);
                       await Share.shareXFiles([xFile], text: "checkout this motivational image!");
                      },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  FavoriteButton(valueChanged: (bool isFavourited) {
                    if (isFavourited) {
                      ff.addFavourite(widget.imagePath);
                      var snackBar = SnackBar(content: Text(
                          'Added to favourites.'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                    if (!isFavourited) {
                      ff.deleteFavourited(widget.imagePath);
                      var snackBar = SnackBar(content: Text(
                          'Removed from favourites.'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                    setState(() {});
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
        await ImageGallerySaver.saveImage(image);
       try{
          // Get the directory where the app's downloads are saved.
          final Directory downloadsDirectory = await getApplicationDocumentsDirectory();
          // Create a new directory inside the downloads directory to store the images.
          final Directory imagesDirectory = Directory('${downloadsDirectory.path}/images');
          imagesDirectory.create();

          // Save the image in the images directory.
          final File imageFile = File('${imagesDirectory.path}/${rng}.jpg');
          imageFile.writeAsBytes(image);
          print({"Stored the image in : ":imageFile.path});

       }catch(E){
                 print({"Error ": E});
       }
        }
        var snackBar = SnackBar(content: Text('Added to Gallery.'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      screenshotController
          .capture(delay: const Duration(milliseconds: 10))
          .then((Uint8List? image) async {
        _saved(image!);
      });
    }




}
