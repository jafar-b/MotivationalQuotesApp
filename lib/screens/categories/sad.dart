import 'package:flutter/material.dart';
import 'package:motivationalquotesapp/imagedetails.dart';

import '../../firebaseconfig.dart';



class sad extends StatefulWidget {


  const sad({Key? key}) : super(key: key);

  @override
  State<sad> createState() => _sadState();
}

class _sadState extends State<sad> {
  var ff = firebaseconfig();
  List<String> imageUrls = [];

  @override
  void initState() {
    super.initState();
    ff.fetchImages();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: BackButton(onPressed: (){
          Navigator.pop(context);
        },),elevation: 5,title: Text("Sad"),
      ) ,
      body:FutureBuilder<List<String>>(
        future: ff.fetchImages(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            imageUrls = snapshot.data!;
            return GridView.count(
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
                                  ImageDetailsScreen(imagePath: e)));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(e),
                    ),
                  )
              ).toList(),
            );
          } else {
            return Center(child: Text("No data found"));
          }
        },
      )
    );
  }
}

