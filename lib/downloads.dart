import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:motivationalquotesapp/downloadedimagedetails.dart';
import 'package:path_provider/path_provider.dart';

List list=[];
class downloads extends StatefulWidget {
  const downloads({Key? key}) : super(key: key);
  @override
  State<downloads> createState() => _downloadsState();
}

class _downloadsState extends State<downloads> {

  @override
  void initState() {
    super.initState();
    getImages();
  }

  Future<List<FileSystemEntity>>getImages()async{
    final Directory downloadsDirectory=await getApplicationDocumentsDirectory();
    final Directory imagesDirectory = Directory('${downloadsDirectory.path}/images');
    final List<FileSystemEntity> images = imagesDirectory.listSync();
    setState(() {
      list=images;
    });
    print(list);
    return images;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: BackButton(onPressed: (){
          Navigator.pop(context);
        },),elevation: 5,title: Text("Downloads"),
      ) ,
      body:grid(context),
    );
  }
    }

  Widget grid(BuildContext context) {
   return GestureDetector(
      child: list!=[]? GridView.count(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        children:
        list.map((e) =>
            GestureDetector(
              onTap: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ImageDetailsScreen(imagePath:e)));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.file(e),
              ),
            )
        ).toList(),
      ) :
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have no downloads.',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Explore more to find something to download.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Explore More'),
            ),
          ],
        ),
      ),
    );
  }
