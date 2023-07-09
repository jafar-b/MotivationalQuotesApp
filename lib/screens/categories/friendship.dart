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
//   "assets/images/friendship/1.jpg",
//   "assets/images/friendship/2.jpg",
//   "assets/images/friendship/3.jpg",
//   "assets/images/friendship/4.jpg",
//   "assets/images/friendship/6.jpg",
//   "assets/images/friendship/5.jpg",
//   "assets/images/friendship/7.jpg",
//   "assets/images/friendship/8.jpg",
//   "assets/images/friendship/9.jpg",
//   "assets/images/friendship/10.jpg",
//   "assets/images/friendship/11.jpg",
//   "assets/images/friendship/12.jpg",
//   "assets/images/friendship/13.jpg",
//   "assets/images/friendship/14.jpg",
//   "assets/images/friendship/15.jpg",
//   "assets/images/friendship/16.jpg",
//   "assets/images/friendship/17.jpg",
//   "assets/images/friendship/18.jpg",
//   "assets/images/friendship/19.jpg",
//   "assets/images/friendship/20.jpg",
//   "assets/images/friendship/21.jpg",
//   "assets/images/friendship/22.jpg",
//   "assets/images/friendship/23.jpg",
//   "assets/images/friendship/24.jpg",
//   "assets/images/friendship/25.jpg",
//   "assets/images/friendship/26.jpg",
//   "assets/images/friendship/27.jpg",
//   "assets/images/friendship/28.jpg",
//   "assets/images/friendship/29.jpg",
//   "assets/images/friendship/30.jpg",
//   "assets/images/friendship/31.jpg",
//   "assets/images/friendship/32.jpg",
//   "assets/images/friendship/33.jpg",
//   "assets/images/friendship/34.jpg",
//   "assets/images/friendship/35.jpg",
//   "assets/images/friendship/36.jpg",
//   "assets/images/friendship/37.jpg",
//   "assets/images/friendship/38.jpg",
//   "assets/images/friendship/39.jpg",
//   "assets/images/friendship/40.jpg",
//   "assets/images/friendship/42.jpg",
//   "assets/images/friendship/41.jpg",
//   "assets/images/friendship/43.jpg",
//   "assets/images/friendship/44.jpg",
//   "assets/images/friendship/45.jpg",
//   "assets/images/friendship/46.jpg"
// ];
class friendship extends StatelessWidget {


  const friendship({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: BackButton(onPressed: (){
          Navigator.pop(context);
        },),elevation: 5,title: Text("Friendship"),

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