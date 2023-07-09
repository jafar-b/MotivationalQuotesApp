import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motivationalquotesapp/screens/categories/alone.dart';
import 'package:motivationalquotesapp/screens/premiumfeatures.dart';
// import 'package:motivationalquotesapp/screens/Others.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}
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

class _homeState extends State<home> {
  double buttonSize = 20;
  int _currentScreen = 0;
  List shuffledList=[];

  @override
  void initState()  {
    super.initState();
    shuffledList = list..shuffle();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: appBar(),
      drawer:  Drawer(child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header
          DrawerHeader(
            child: Center(
              child: Text(
                'Motivational Quotes     -Jafar',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // List items
          ListTile(
            leading: Icon(Icons.create),
            title: Text('Create Quote'),
            onTap: () {
              // Navigate to the create quote screen
              Navigator.pushNamed(context, '/create-quote');
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('My Creations'),
            onTap: () {
              // Navigate to the my creations screen
              Navigator.pushNamed(context, '/my-creations');
            },
          ),
          ListTile(
            leading: Icon(Icons.download),
            title: Text('Downloads'),
            onTap: () {
              // Navigate to the downloads screen
              Navigator.pushNamed(context, '/downloads');
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () {
              // Navigate to the favorites screen
              Navigator.pushNamed(context, '/favorites');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.facebook),
            title: Text('Like us on Facebook'),
            onTap: () {
              // Open the Facebook page in the browser
              // TODO: Implement this
            },
          ),
          ListTile(
            leading: Icon(Icons.facebook),
            title: Text('Follow us on Instagram'),
            onTap: () {
              // Open the Instagram page in the browser
              // TODO: Implement this
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Navigate to the settings screen
              Navigator.pushNamed(context, '/settings');
            },
          ),
          // Your other drawer items
        ],
      )
      ),

      
      body: IndexedStack(
        index: _currentScreen,
        children: [
          grid(),
          Others(),
        ],
      ),
    );

  }

  Widget grid() {
    return GestureDetector(
      child: GridView.count(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        primary: false,
        padding: const EdgeInsets.all(20),
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
          IconButton(
            icon: Icon(Icons.attach_money, size:30),
            onPressed: () {
              print("Pushed") ;
              Navigator.pushNamed(context, '/premiumfeatures');

            },

          ),
        ],
      ),
      
    );
  }
}

class Others extends StatelessWidget {
  const Others({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        GridView.count(
          padding: EdgeInsets.all(10),
            crossAxisCount: 2,
            children: [
              // Button 1
              ElevatedButton.icon(
                onPressed: () {
                  // Go to the Alone screen
                  // Navigator.pushNamed(context, '/alone');
                  Navigator.push(context, MaterialPageRoute(builder: (context) => alone()));
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
              SizedBox(
                height: 40,
                width: 60,
                
                child:
                ElevatedButton.icon(
                  onPressed: () {
                    // Go to the Fitness screen
                    Navigator.pushNamed(context, '/fitness');
                  },
                  icon: Icon(Icons.fitness_center),
                  label: Text('Fitness'),
                ),
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
                onPressed: () { // Go to the Relationship screen
                  Navigator.pushNamed(context, '/relationship');
                },
                icon: Icon(Icons.heart_broken),
                label: const Text('Relationship'),
                ),
                    ]
        ) 
    );


  }
}
           