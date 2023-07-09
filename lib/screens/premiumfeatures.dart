import 'package:flutter/material.dart';

class premiumFeatures extends StatelessWidget {
  const premiumFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase Premium'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Go back to the previous screen.
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Get 3 days free')),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Remove ads')),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Remove watermark')),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Premium images')),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Combo save(25%)')),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Restore purchase')),
            margin: const EdgeInsets.all(8.0),
          ),
          // FAQ and Contact us buttons should be placed horizontally adjacent to each other
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('FAQ')),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('CONTACT US')),
                margin: const EdgeInsets.all(8.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
