import 'dart:io';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';

class CreateQuote extends StatefulWidget {
  @override
  _CreateQuoteState createState() => _CreateQuoteState();
}
class _CreateQuoteState extends State<CreateQuote> {
  Color _color = Colors.blue;
  bool _bold = false;
  bool _italic = false;
  bool _underline = false;
  late final String quote;
  final GlobalKey globalkey=new GlobalKey();
  double _scaleFactor = 1.0;
  double _baseScaleFactor = 1.0;
  late File image;
  Uint8List? bytes;
  //Create an instance of ScreenshotController
  ScreenshotController screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Quote"),
        leading: BackButton(onPressed: () {
          Navigator.pop(context);
        }),
        elevation: 5,
      ),
      body: Column(
        children: [ 
          Container(
            height: 400,
            width: double.infinity,
            color: _color,
            child: Screenshot(
              controller: screenshotController,
              child: GestureDetector(
              onScaleStart: (details) {
                _baseScaleFactor = _scaleFactor;
              },
              onScaleUpdate: (details) {
                setState(() {
                  _scaleFactor = _baseScaleFactor * details.scale;
                });
              },
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your quote here",
                ),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: _bold ? FontWeight.bold : FontWeight.normal,
                  fontStyle: _italic ? FontStyle.italic : FontStyle.normal,
                  decoration: _underline ? TextDecoration.underline : null,
                  fontSize: _scaleFactor * 16,
                ),
              ),
            ),
          ),
          ),

           Container(
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.format_underline),
                    onPressed: () {
                      setState(() {
                        _underline = !_underline;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                        _bold ? Icons.format_bold : Icons.format_bold_rounded),
                    onPressed: () {
                      setState(() {
                        _bold = !_bold;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(_italic
                        ? Icons.format_italic_rounded
                        : Icons.format_italic),
                    onPressed: () {
                      setState(() {
                        _italic = !_italic;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.download),
                    onPressed: () async {
                        takeScreenShot().then((){
                        var snackBar = SnackBar(content: Text('Saved to Gallery.'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        //Save the image bytes
                        });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.flip_to_back_rounded),
                    onPressed: _showColorPicker,
                  ),
                ],
              ),
            ),

        ],
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
     screenshotController.capture(delay: const Duration(milliseconds: 10)).then((Uint8List? image) async {
       _saved(image!);
     });
  }

  void _showColorPicker() {
    Color pickerColor = Color(0xff443a49);
    Color currentColor = Color(0xff443a49);
    void changeColor(Color color) {
      setState(() => pickerColor = color);
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Choose a color"),
          content: ColorPicker(
            pickerColor: Colors.red, //default color
            onColorChanged: (Color color) {
              print(color);
              //Change the color of the column to the picked color
              setState(() {
                _color = color;
              });
            },
          ),
          actions: [
            TextButton(
              child: Text("Ok"),
              onPressed: () {
                setState(() => currentColor = pickerColor);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  downloadFile()async{
    bool download=await savefile("https://images.unsplash.com/photo-1681115477083-49332c50913e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=438&q=80", Random().nextInt(200) as String);
    if(download){
      return true;
    }
    return false;
  }

  Future <bool> savefile(String url,String filename)async{

    Directory directory;
    try{
      if(await _requestPermission( Permission.storage))
      {
        directory = (await getExternalStorageDirectory())!;
        print(directory.path);
      } else{
        return false;
      }
    }catch(E){
      print(E);
    }
    return false;
  }

  Future<bool> _requestPermission(Permission permission)async {
    if (await permission.isGranted) {
      return true;
    } else {
      var result = await permission.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }
}
