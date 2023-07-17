import 'package:flutter/material.dart';
class premiumfeatdialogue extends StatelessWidget {
  const premiumfeatdialogue({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Premium Features"),
      content: Text("Upgrade to Premium to unlock these features: \n\n* Unlimited quote creation \n* Access to all fonts \n* No ads \n* Export quotes in high quality"),
      actions: [
        TextButton(
          child: Text("Upgrade"),
          onPressed: () {
            // Navigate to the premium subscription page.
          },
        ),
        TextButton(
          child: Text("Cancel"),
          onPressed: () {
            // Close the dialogue box.
            Navigator.of(context).pop();
          },
        ),
      ],
    );;
  }
}
