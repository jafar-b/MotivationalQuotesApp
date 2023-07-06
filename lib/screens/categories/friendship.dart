import 'package:flutter/material.dart';

final List list = [
  "assets/images/friendship/1.jpg",
  "assets/images/friendship/2.jpg",
  "assets/images/friendship/3.jpg",
  "assets/images/friendship/4.jpg",
  "assets/images/friendship/6.jpg",
  "assets/images/friendship/5.jpg",
  "assets/images/friendship/7.jpg",
  "assets/images/friendship/8.jpg",
  "assets/images/friendship/9.jpg",
  "assets/images/friendship/10.jpg",
  "assets/images/friendship/11.jpg",
  "assets/images/friendship/12.jpg",
  "assets/images/friendship/13.jpg",
  "assets/images/friendship/14.jpg",
  "assets/images/friendship/15.jpg",
  "assets/images/friendship/16.jpg",
  "assets/images/friendship/17.jpg",
  "assets/images/friendship/18.jpg",
  "assets/images/friendship/19.jpg",
  "assets/images/friendship/20.jpg",
  "assets/images/friendship/21.jpg",
  "assets/images/friendship/22.jpg",
  "assets/images/friendship/23.jpg",
  "assets/images/friendship/24.jpg",
  "assets/images/friendship/25.jpg",
  "assets/images/friendship/26.jpg",
  "assets/images/friendship/27.jpg",
  "assets/images/friendship/28.jpg",
  "assets/images/friendship/29.jpg",
  "assets/images/friendship/30.jpg",
  "assets/images/friendship/31.jpg",
  "assets/images/friendship/32.jpg",
  "assets/images/friendship/33.jpg",
  "assets/images/friendship/34.jpg",
  "assets/images/friendship/35.jpg",
  "assets/images/friendship/36.jpg",
  "assets/images/friendship/37.jpg",
  "assets/images/friendship/38.jpg",
  "assets/images/friendship/39.jpg",
  "assets/images/friendship/40.jpg",
  "assets/images/friendship/42.jpg",
  "assets/images/friendship/41.jpg",
  "assets/images/friendship/43.jpg",
  "assets/images/friendship/44.jpg",
  "assets/images/friendship/45.jpg",
  "assets/images/friendship/46.jpg"
];
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