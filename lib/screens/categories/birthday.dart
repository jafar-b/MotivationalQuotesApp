import 'package:flutter/material.dart';
import 'package:motivationalquotesapp/imagedetails.dart';

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
//   "assets/images/birthday/1.jpg",
//   "assets/images/birthday/2.jpg",
//   "assets/images/birthday/3.jpg",
//   "assets/images/birthday/4.jpg",
//   "assets/images/birthday/6.jpg",
//   "assets/images/birthday/5.jpg",
//   "assets/images/birthday/7.jpg",
//   "assets/images/birthday/8.jpg",
//   "assets/images/birthday/9.jpg",
//   "assets/images/birthday/10.jpg",
//   "assets/images/birthday/11.jpg",
//   "assets/images/birthday/12.jpg",
//   "assets/images/birthday/13.jpg",
//   "assets/images/birthday/14.jpg",
//   "assets/images/birthday/15.jpg",
//   "assets/images/birthday/16.jpg",
//   "assets/images/birthday/17.jpg",
//   "assets/images/birthday/18.jpg",
//   "assets/images/birthday/19.jpg",
//   "assets/images/birthday/20.jpg",
//   "assets/images/birthday/21.jpg",
//   "assets/images/birthday/22.jpg",
//   "assets/images/birthday/23.jpg",
//   "assets/images/birthday/24.jpg",
//   "assets/images/birthday/25.jpg",
//   "assets/images/birthday/26.jpg",
//   "assets/images/birthday/27.jpg",
//   "assets/images/birthday/28.jpg",
//   "assets/images/birthday/29.jpg",
//   "assets/images/birthday/30.jpg",
//   "assets/images/birthday/31.jpg",
//   "assets/images/birthday/32.jpg",
//   "assets/images/birthday/33.jpg",
//   "assets/images/birthday/34.jpg",
//   "assets/images/birthday/35.jpg",
//   "assets/images/birthday/36.jpg",
//   "assets/images/birthday/37.jpg",
//   "assets/images/birthday/38.jpg",
//   "assets/images/birthday/39.jpg",
//   "assets/images/birthday/40.jpg",
//   "assets/images/birthday/42.jpg",
//   "assets/images/birthday/41.jpg",
//   "assets/images/birthday/43.jpg",
//   "assets/images/birthday/44.jpg",
//   "assets/images/birthday/45.jpg",
//   "assets/images/birthday/46.jpg"
// ];
class birthday extends StatelessWidget {


  const birthday({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: BackButton(onPressed: (){
          Navigator.pop(context);
        },),elevation: 5,title: Text("Birthday"),

      ) ,
      body:grid(context),
    );
  }
}


Widget grid(BuildContext context) {
  return GestureDetector(

    child: GridView.count(
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisCount: 2,
      children:  list
          .map((e) => GestureDetector(
        onTap: () {
          // This will open the new screen with the image and icons.
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ImageDetailsScreen(imagePath: e)));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            e,
            fit: BoxFit.fitHeight,
          ),
        ),
      ))
          .toList(),
    ),
  );
}
