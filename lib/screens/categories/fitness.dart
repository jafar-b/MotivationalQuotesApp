import 'package:flutter/material.dart';
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
//   "assets/images/fitness/1.jpg",
//   "assets/images/fitness/2.jpg",
//   "assets/images/fitness/3.jpg",
//   "assets/images/fitness/4.jpg",
//   "assets/images/fitness/6.jpg",
//   "assets/images/fitness/5.jpg",
//   "assets/images/fitness/7.jpg",
//   "assets/images/fitness/8.jpg",
//   "assets/images/fitness/9.jpg",
//   "assets/images/fitness/10.jpg",
//   "assets/images/fitness/11.jpg",
//   "assets/images/fitness/12.jpg",
//   "assets/images/fitness/13.jpg",
//   "assets/images/fitness/14.jpg",
//   "assets/images/fitness/15.jpg",
//   "assets/images/fitness/16.jpg",
//   "assets/images/fitness/17.jpg",
//   "assets/images/fitness/18.jpg",
//   "assets/images/fitness/19.jpg",
//   "assets/images/fitness/20.jpg",
//   "assets/images/fitness/21.jpg",
//   "assets/images/fitness/22.jpg",
//   "assets/images/fitness/23.jpg",
//   "assets/images/fitness/24.jpg",
//   "assets/images/fitness/25.jpg",
//   "assets/images/fitness/26.jpg",
//   "assets/images/fitness/27.jpg",
//   "assets/images/fitness/28.jpg",
//   "assets/images/fitness/29.jpg",
//   "assets/images/fitness/30.jpg",
//   "assets/images/fitness/31.jpg",
//   "assets/images/fitness/32.jpg",
//   "assets/images/fitness/33.jpg",
//   "assets/images/fitness/34.jpg",
//   "assets/images/fitness/35.jpg",
//   "assets/images/fitness/36.jpg",
//   "assets/images/fitness/37.jpg",
//   "assets/images/fitness/38.jpg",
//   "assets/images/fitness/39.jpg",
//   "assets/images/fitness/40.jpg",
//   "assets/images/fitness/42.jpg",
//   "assets/images/fitness/41.jpg",
//   "assets/images/fitness/43.jpg",
//   "assets/images/fitness/44.jpg",
//   "assets/images/fitness/45.jpg",
//   "assets/images/fitness/46.jpg"
// ];
class fitness extends StatelessWidget {


  const fitness({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: BackButton(onPressed: (){
          Navigator.pop(context);
        },),elevation: 5,title: Text("Fitness"),

      ) ,
      body:grid() ,
    );
  }
}


Widget grid() {
  return GestureDetector(
    child: GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: list
          .map((e) => ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            e,
            fit: BoxFit.fitHeight,
          )))
          .toList(),
    ),
  );
}
