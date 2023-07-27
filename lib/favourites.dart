import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'firebaseconfig.dart';
import 'imagedetails.dart';

class favourites extends StatefulWidget {
  const favourites({Key? key}) : super(key: key);

  @override
  State<favourites> createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {
  var db = FirebaseFirestore.instance;
  var ff = firebaseconfig();
  List<String>imageUrls=[];
  @override
  void initState() {
    super.initState();
    ff.fetchFavourites().then((List<String> list){
      imageUrls=list;
          }
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 5,
        title: Text("Favourites"),
      ),
      body:
          GridView.count(
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisCount: 2,
                  children: imageUrls
                      .map((e) => GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ImageDetailsScreen(imagePath: e)));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(e),
                            ),
                          ))
                      .toList(),
                )
    );

    }
  }

