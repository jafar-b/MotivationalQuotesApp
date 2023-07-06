import 'package:flutter/material.dart';

final List list = [
  "assets/images/anniversary/1.jpg",
  "assets/images/anniversary/2.jpg",
  "assets/images/anniversary/3.jpg",
  "assets/images/anniversary/4.jpg",
  "assets/images/anniversary/6.jpg",
  "assets/images/anniversary/5.jpg",
  "assets/images/anniversary/7.jpg",
  "assets/images/anniversary/8.jpg",
  "assets/images/anniversary/9.jpg",
  "assets/images/anniversary/10.jpg",
  "assets/images/anniversary/11.jpg",
  "assets/images/anniversary/12.jpg",
  "assets/images/anniversary/13.jpg",
  "assets/images/anniversary/14.jpg",
  "assets/images/anniversary/15.jpg",
  "assets/images/anniversary/16.jpg",
  "assets/images/anniversary/17.jpg",
  "assets/images/anniversary/18.jpg",
  "assets/images/anniversary/19.jpg",
  "assets/images/anniversary/20.jpg",
  "assets/images/anniversary/21.jpg",
  "assets/images/anniversary/22.jpg",
  "assets/images/anniversary/23.jpg",
  "assets/images/anniversary/24.jpg",
  "assets/images/anniversary/25.jpg",
  "assets/images/anniversary/26.jpg",
  "assets/images/anniversary/27.jpg",
  "assets/images/anniversary/28.jpg",
  "assets/images/anniversary/29.jpg",
  "assets/images/anniversary/30.jpg",
  "assets/images/anniversary/31.jpg",
  "assets/images/anniversary/32.jpg",
  "assets/images/anniversary/33.jpg",
  "assets/images/anniversary/34.jpg",
  "assets/images/anniversary/35.jpg",
  "assets/images/anniversary/36.jpg",
  "assets/images/anniversary/37.jpg",
  "assets/images/anniversary/38.jpg",
  "assets/images/anniversary/39.jpg",
  "assets/images/anniversary/40.jpg",
  "assets/images/anniversary/42.jpg",
  "assets/images/anniversary/41.jpg",
  "assets/images/anniversary/43.jpg",
  "assets/images/anniversary/44.jpg",
  "assets/images/anniversary/45.jpg",
  "assets/images/anniversary/46.jpg"
];
class anniversary extends StatelessWidget {


  const anniversary({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: BackButton(onPressed: (){
          Navigator.pop(context);
        },),elevation: 5,title: Text("Anniversary"),

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
