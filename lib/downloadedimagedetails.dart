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
    var imagePath;
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
    print(widget.imagePath);
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
                    child: Image.file(widget.imagePath as File ),

                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    iconSize: 40,
                    onPressed: () async {
                      },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    iconSize: 40,
                    onPressed: () async {
                       var file=widget.imagePath;
                       try{
                           await file.delete();
                         print("File deleted");
                           var snackBar = SnackBar(content: Text(
                               'File will be gone the next time you navigate to downloads page.'));
                           ScaffoldMessenger.of(context).showSnackBar(snackBar);

                       } catch(E){print(E);
                       var snackBar = SnackBar(content: Text(
                           'Error deleting file.'));
                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
                       }
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
