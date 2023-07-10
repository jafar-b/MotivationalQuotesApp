import 'package:flutter/material.dart';
final List list = [
  "assets/images/motivational/1.jpg",
  "assets/images/motivational/2.jpg",
  "assets/images/motivational/3.jpg",];

class favourites extends StatelessWidget {
  const favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: BackButton(onPressed: (){
          Navigator.pop(context);
        },),elevation: 5,title: Text("Favourites"),

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


