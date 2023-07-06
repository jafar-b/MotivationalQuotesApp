import 'package:flutter/material.dart';

final List list = [
  "assets/images/attitude/1.jpg",
  "assets/images/attitude/2.jpg",
  "assets/images/attitude/3.jpg",
  "assets/images/attitude/4.jpg",
  "assets/images/attitude/6.jpg",
  "assets/images/attitude/5.jpg",
  "assets/images/attitude/7.jpg",
  "assets/images/attitude/8.jpg",
  "assets/images/attitude/9.jpg",
  "assets/images/attitude/10.jpg",
  "assets/images/attitude/11.jpg",
  "assets/images/attitude/12.jpg",
  "assets/images/attitude/13.jpg",
  "assets/images/attitude/14.jpg",
  "assets/images/attitude/15.jpg",
  "assets/images/attitude/16.jpg",
  "assets/images/attitude/17.jpg",
  "assets/images/attitude/18.jpg",
  "assets/images/attitude/19.jpg",
  "assets/images/attitude/20.jpg",
  "assets/images/attitude/21.jpg",
  "assets/images/attitude/22.jpg",
  "assets/images/attitude/23.jpg",
  "assets/images/attitude/24.jpg",
  "assets/images/attitude/25.jpg",
  "assets/images/attitude/26.jpg",
  "assets/images/attitude/27.jpg",
  "assets/images/attitude/28.jpg",
  "assets/images/attitude/29.jpg",
  "assets/images/attitude/30.jpg",
  "assets/images/attitude/31.jpg",
  "assets/images/attitude/32.jpg",
  "assets/images/attitude/33.jpg",
  "assets/images/attitude/34.jpg",
  "assets/images/attitude/35.jpg",
  "assets/images/attitude/36.jpg",
  "assets/images/attitude/37.jpg",
  "assets/images/attitude/38.jpg",
  "assets/images/attitude/39.jpg",
  "assets/images/attitude/40.jpg",
  "assets/images/attitude/42.jpg",
  "assets/images/attitude/41.jpg",
  "assets/images/attitude/43.jpg",
  "assets/images/attitude/44.jpg",
  "assets/images/attitude/45.jpg",
  "assets/images/attitude/46.jpg"
];
class attitude extends StatelessWidget {


  const attitude({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: BackButton(onPressed: (){
          Navigator.pop(context);
        },),elevation: 5,title: Text("Attitude"),

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
