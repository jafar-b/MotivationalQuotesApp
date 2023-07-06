import 'package:flutter/material.dart';

final List list = [
  "assets/images/birthday/1.jpg",
  "assets/images/birthday/2.jpg",
  "assets/images/birthday/3.jpg",
  "assets/images/birthday/4.jpg",
  "assets/images/birthday/6.jpg",
  "assets/images/birthday/5.jpg",
  "assets/images/birthday/7.jpg",
  "assets/images/birthday/8.jpg",
  "assets/images/birthday/9.jpg",
  "assets/images/birthday/10.jpg",
  "assets/images/birthday/11.jpg",
  "assets/images/birthday/12.jpg",
  "assets/images/birthday/13.jpg",
  "assets/images/birthday/14.jpg",
  "assets/images/birthday/15.jpg",
  "assets/images/birthday/16.jpg",
  "assets/images/birthday/17.jpg",
  "assets/images/birthday/18.jpg",
  "assets/images/birthday/19.jpg",
  "assets/images/birthday/20.jpg",
  "assets/images/birthday/21.jpg",
  "assets/images/birthday/22.jpg",
  "assets/images/birthday/23.jpg",
  "assets/images/birthday/24.jpg",
  "assets/images/birthday/25.jpg",
  "assets/images/birthday/26.jpg",
  "assets/images/birthday/27.jpg",
  "assets/images/birthday/28.jpg",
  "assets/images/birthday/29.jpg",
  "assets/images/birthday/30.jpg",
  "assets/images/birthday/31.jpg",
  "assets/images/birthday/32.jpg",
  "assets/images/birthday/33.jpg",
  "assets/images/birthday/34.jpg",
  "assets/images/birthday/35.jpg",
  "assets/images/birthday/36.jpg",
  "assets/images/birthday/37.jpg",
  "assets/images/birthday/38.jpg",
  "assets/images/birthday/39.jpg",
  "assets/images/birthday/40.jpg",
  "assets/images/birthday/42.jpg",
  "assets/images/birthday/41.jpg",
  "assets/images/birthday/43.jpg",
  "assets/images/birthday/44.jpg",
  "assets/images/birthday/45.jpg",
  "assets/images/birthday/46.jpg"
];
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
