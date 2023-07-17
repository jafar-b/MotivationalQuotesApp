import 'package:flutter/material.dart';
import 'package:motivationalquotesapp/premiumfeatdialogue.dart';

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
              color: Colors.indigoAccent,
              margin: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text(
                  'Buy Motivational quotes premium!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )),
          TextButton(
            child: Text('Get 3 days FREE!!'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return premiumfeatdialogue();
                  });

              // Show an alert dialogue with the premium feature of removing watermark.
            },
          ),
          TextButton(
            child: Text('Premium images'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return premiumfeatdialogue();
                  });

              // Show an alert dialogue with the premium feature of premium images.
            },
          ),
          TextButton(
            child: Text('Combo save(25%)'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return premiumfeatdialogue();
                  });

              // Show an alert dialogue with the premium feature of combo save(25%).
            },
          ),
          TextButton(
            child: Text('Restore purchase'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return premiumfeatdialogue();
                  });
            },
          ),
          // FAQ and Contact us buttons should be placed horizontally adjacent to each other
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                color: Colors.amber[600],
                margin: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/faqpage');
                    },
                    child: const Center(
                        widthFactor: 5,
                        child: Text('FAQ',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)))),
              ),
              Container(
                height: 50,
                color: Colors.amber[600],
                margin: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contactus');
                    },
                    child: const Center(
                        widthFactor: 1.5,
                        child: Text('CONTACT US',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
