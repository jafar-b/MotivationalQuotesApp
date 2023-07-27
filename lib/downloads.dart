import 'package:flutter/material.dart';
import 'package:motivationalquotesapp/imagedetails.dart';
final List list = [
"assets/images/motivational/1.jpg",
"assets/images/motivational/2.jpg",
"assets/images/motivational/3.jpg",];

class downloads extends StatelessWidget {
  const downloads({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: BackButton(onPressed: (){
          Navigator.pop(context);
        },),elevation: 5,title: Text("Downloads"),

      ) ,
      body:grid(context) ,
    );

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



}
