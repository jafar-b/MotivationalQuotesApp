import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

final List list = [
  "assets/images/1.jpg",
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
  "assets/images/5.jpg",
  "assets/images/6.jpg",
  "assets/images/7.jpg",
  "assets/images/8.jpg",
  "assets/images/9.jpg",
  "assets/images/10.jpg",
  "assets/images/11.jpg",
  "assets/images/12.jpg",
  "assets/images/13.jpg",
  "assets/images/14.jpg",
  "assets/images/15.jpg",
  "assets/images/16.jpg",
  "assets/images/17.jpg",
  "assets/images/18.jpg",
  "assets/images/19.jpg",
  "assets/images/20.jpg",
  "assets/images/21.jpg",
  "assets/images/22.jpg",
  "assets/images/23.jpg",
  "assets/images/24.jpg",
  "assets/images/25.jpg",
  "assets/images/26.jpg",
  "assets/images/27.jpg",
  "assets/images/28.jpg",
  "assets/images/29.jpg",
  "assets/images/30.jpg",
  "assets/images/31.jpg",
  "assets/images/32.jpg",
  "assets/images/33.jpg",
  "assets/images/34.jpg",
  "assets/images/35.jpg",
  "assets/images/36.jpg",
  "assets/images/37.jpg",
  "assets/images/38.jpg",
  "assets/images/39.jpg",
  "assets/images/40.jpg",
  "assets/images/42.jpg",
  "assets/images/41.jpg",
  "assets/images/43.jpg",
  "assets/images/44.jpg",
  "assets/images/45.jpg",
  "assets/images/46.jpg"
];

class _homeState extends State<home> {
  double buttonSize = 20;
  int _currentScreen = 0;
  List shuffledList=[];


  @override
  void initState() {
    super.initState();
    shuffledList = list..shuffle();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: IndexedStack(
        index: _currentScreen,
        children: [
          grid(),
      
        ],
      ),
    );
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


  AppBar appBar() {
    return AppBar(
      elevation: 10,
      shadowColor: Colors.black,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      toolbarHeight: 80,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {
                setState(() {
                  _currentScreen = 0;
                });
              },
              child: Text(
                "Motivational",
                style: TextStyle(
                    fontSize: buttonSize,
                    color: _currentScreen == 0
                        ? Colors.deepPurpleAccent
                        : Colors.black),
              )),
          TextButton(
              onPressed: () {
                setState(() {
                  _currentScreen = 1;
                });
              },
              child: Text(
                "Others",
                style: TextStyle(
                    fontSize: buttonSize,
                    color: _currentScreen == 1
                        ? Colors.deepPurpleAccent
                        : Colors.black),
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),
      leading: IconButton(
        icon: Icon(Icons.attach_money, size: 30),
        onPressed: () {},
      ),
    );
  }
}
           class Others extends StatelessWidget {
             const Others({Key? key}) : super(key: key);
           
             @override
             Widget build(BuildContext context) {
               return Scaffold(
                 body:   GridView.count(
                     crossAxisCount: 2,
                     children: [
                     // Button 1
                     ElevatedButton.icon(
                     onPressed: () {
                   // Go to the Alone screen
                   Navigator.pushNamed(context, '/alone');
             },
               icon: Icon(Icons.person_outline),
               label: Text('Alone'),
               ),
               // Button 2
               ElevatedButton.icon(
               onPressed: () {
               // Go to the Anniversary screen
               Navigator.pushNamed(context, '/anniversary');
               },
               icon: Icon(Icons.cake_rounded),
               label: Text('Anniversary'),
               ),
               // Button 3
               ElevatedButton.icon(
               onPressed: () {
               // Go to the Attitude screen
               Navigator.pushNamed(context, '/attitude');
               },
               icon: Icon(Icons.mood),
               label: Text('Attitude'),
               ),
               // Button 4
               ElevatedButton.icon(
               onPressed: () {
               // Go to the Birthday screen
               Navigator.pushNamed(context, '/birthday');
               },
               icon: Icon(Icons.cake_outlined),
               label: Text('Birthday'),
               ),
               // Button 5
               ElevatedButton.icon(
               onPressed: () {
               // Go to the Fitness screen
               Navigator.pushNamed(context, '/fitness');
               },
               icon: Icon(Icons.fitness_center),
               label: Text('Fitness'),
               ),
               // Button 6
               ElevatedButton.icon(
               onPressed: () {
               // Go to the Friendship screen
               Navigator.pushNamed(context, '/friendship');
               },
               icon: Icon(Icons.people_alt),
               label: Text('Friendship'),
               ),
               // Button 7
               ElevatedButton.icon(
               onPressed: () {
               // Go to the Good morning screen
               Navigator.pushNamed(context, '/good_morning');
               },
               icon: Icon(Icons.sunny),
               label: Text('Good morning'),
               ),
               // Button 8
               ElevatedButton.icon(
               onPressed: () {
               // Go to the Good night screen
               Navigator.pushNamed(context, '/good_night');
               },
               icon: Icon(Icons.nightlight),
               label: Text('Good night'),
               ),
               // Button 9
               ElevatedButton.icon(
               onPressed: () {
               // Go to the Love screen
               Navigator.pushNamed(context, '/love');
               },
               icon: Icon(Icons.favorite),
               label: Text('Love'),
               ),
               // Button 10
               ElevatedButton.icon(
               onPressed: () {
               // Go to the Positive screen
               Navigator.pushNamed(context, '/positive');
               },
               icon: Icon(Icons.sentiment_satisfied),
               label: Text('Positive'),
               ),
               // Button 11
               ElevatedButton.icon(
               onPressed: () {
               // Go to the Relationship screen
               Navigator.pushNamed(context, '/relationship');
               },
               icon: Icon(Icons.heart_broken),
               label: Text('Relationship'),
               )

               ]
               )
               );
              
             
             }
           }
           