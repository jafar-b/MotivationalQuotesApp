import 'dart:io';
import 'package:flutter/material.dart';
import 'package:motivationalquotesapp/imagedetails.dart';
import 'package:path_provider/path_provider.dart';

final List list=[];
class downloads extends StatefulWidget {
  const downloads({Key? key}) : super(key: key);
  @override
  State<downloads> createState() => _downloadsState();
}

class _downloadsState extends State<downloads> {
  List list=[];
  @override
  void initState() {
    super.initState();
  }

  Future<void>getImages(List list)async{
    final Directory downloadsDirectory=await getApplicationDocumentsDirectory();
    final Directory imagesDirectory = Directory('${downloadsDirectory.path}/images');
    final List<FileSystemEntity> images = imagesDirectory.listSync();
    setState(() {
      list=images;
    });
    print(list);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: BackButton(onPressed: (){
          Navigator.pop(context);
        },),elevation: 5,title: Text("Downloads"),
      ) ,
      body: GridView.count(
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
                child: Image.network(e),
              ),
            )
        ).toList(),
      )
    );
  }

  Widget grid(BuildContext context) {
   return GestureDetector(
      child: GridView.count(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        children:list.map((e) => const Text("Hello world"),
        ).toList(),
        
      ),
    );
  }
}
