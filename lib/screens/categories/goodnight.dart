import 'package:flutter/material.dart';
import 'package:motivationalquotesapp/imagedetails.dart';

import '../../firebaseconfig.dart';

final List list = [
  "assets/images/motivational/1.jpg",
  "assets/images/motivational/2.jpg",
  "assets/images/motivational/3.jpg",
  "assets/images/motivational/4.jpg",
  "assets/images/motivational/6.jpg",
  "assets/images/motivational/5.jpg",
  "assets/images/motivational/7.jpg",
  "assets/images/motivational/8.jpg",
  "assets/images/motivational/9.jpg",
  "assets/images/motivational/10.jpg",
  "assets/images/motivational/11.jpg",
  "assets/images/motivational/12.jpg",
  "assets/images/motivational/13.jpg",
  "assets/images/motivational/14.jpg",
  "assets/images/motivational/15.jpg",
  "assets/images/motivational/16.jpg",
  "assets/images/motivational/17.jpg",
  "assets/images/motivational/18.jpg",
  "assets/images/motivational/19.jpg",
  "assets/images/motivational/20.jpg",
  "assets/images/motivational/21.jpg",
  "assets/images/motivational/22.jpg",
  "assets/images/motivational/23.jpg",
  "assets/images/motivational/24.jpg",
  "assets/images/motivational/25.jpg",
  "assets/images/motivational/26.jpg",
  "assets/images/motivational/27.jpg",
  "assets/images/motivational/28.jpg",
  "assets/images/motivational/29.jpg",
  "assets/images/motivational/30.jpg",
  "assets/images/motivational/31.jpg",
  "assets/images/motivational/32.jpg",
  "assets/images/motivational/33.jpg",
  "assets/images/motivational/34.jpg",
  "assets/images/motivational/35.jpg",
  "assets/images/motivational/36.jpg",
  "assets/images/motivational/37.jpg",
  "assets/images/motivational/38.jpg",
  "assets/images/motivational/39.jpg",
  "assets/images/motivational/40.jpg",
  "assets/images/motivational/42.jpg",
  "assets/images/motivational/41.jpg",
  "assets/images/motivational/43.jpg",
  "assets/images/motivational/44.jpg",
  "assets/images/motivational/45.jpg",
  "assets/images/motivational/46.jpg"
];

// final List list = [
//   "assets/images/alone/1.jpg",
//   "assets/images/alone/2.jpg",
//   "assets/images/alone/3.jpg",
//   "assets/images/alone/4.jpg",
//   "assets/images/alone/6.jpg",
//   "assets/images/alone/5.jpg",
//   "assets/images/alone/7.jpg",
//   "assets/images/alone/8.jpg",
//   "assets/images/alone/9.jpg",
//   "assets/images/alone/10.jpg",
//   "assets/images/alone/11.jpg",
//   "assets/images/alone/12.jpg",
//   "assets/images/alone/13.jpg",
//   "assets/images/alone/14.jpg",
//   "assets/images/alone/15.jpg",
//   "assets/images/alone/16.jpg",
//   "assets/images/alone/17.jpg",
//   "assets/images/alone/18.jpg",
//   "assets/images/alone/19.jpg",
//   "assets/images/alone/20.jpg",
//   "assets/images/alone/21.jpg",
//   "assets/images/alone/22.jpg",
//   "assets/images/alone/23.jpg",
//   "assets/images/alone/24.jpg",
//   "assets/images/alone/25.jpg",
//   "assets/images/alone/26.jpg",
//   "assets/images/alone/27.jpg",
//   "assets/images/alone/28.jpg",
//   "assets/images/alone/29.jpg",
//   "assets/images/alone/30.jpg",
//   "assets/images/alone/31.jpg",
//   "assets/images/alone/32.jpg",
//   "assets/images/alone/33.jpg",
//   "assets/images/alone/34.jpg",
//   "assets/images/alone/35.jpg",
//   "assets/images/alone/36.jpg",
//   "assets/images/alone/37.jpg",
//   "assets/images/alone/38.jpg",
//   "assets/images/alone/39.jpg",
//   "assets/images/alone/40.jpg",
//   "assets/images/alone/42.jpg",
//   "assets/images/alone/41.jpg",
//   "assets/images/alone/43.jpg",
//   "assets/images/alone/44.jpg",
//   "assets/images/alone/45.jpg",
//   "assets/images/alone/46.jpg"
// ];
class goodnight extends StatefulWidget {


  const goodnight({Key? key}) : super(key: key);

  @override
  State<goodnight> createState() => _goodnightState();
}

class _goodnightState extends State<goodnight> {

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
        },),elevation: 5,title: Text("Goodnight"),

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



