import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:motivationalquotesapp/firebaseconfig.dart';
import 'package:motivationalquotesapp/imagedetails.dart';


class anniversary extends StatefulWidget {
  const anniversary(BuildContext context,{Key? key}) : super(key: key);
  @override
  State<anniversary> createState() => _anniversaryState();
}

class _anniversaryState extends State<anniversary> {
  var ff = firebaseconfig();
  List<String> imageUrls = [];
  
  @override
  void initState() {
    super.initState();
    ff.fetchImages().then((List<String> list)=>{
      setState((){
        imageUrls =list;
      }),
      setState(() { }) ,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () {
            Navigator.pop(context);
          },), elevation: 5, title: Text("Anniversary"),

        ),
        body:  GridView.count(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisCount: 2,
          children:
          imageUrls.map((e) =>
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
}
