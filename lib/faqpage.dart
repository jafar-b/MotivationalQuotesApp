
import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('FAQ',style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:const [
          ExpansionTile(
            title: Text('Cannot Save or share image?'),
            children: [
              Text(
                  'If you are unable to save or share an image, '
                      'please make sure that you have granted the app permission to access your photos. You can do this by going to your devices settings and enabling the "Photos" permission for the app.',),
            ],
          ),
          ExpansionTile(
            title: Text('Problem in always share on facebook?'),
            children: [
              Text(
                'If you are having problems with always sharing on Facebook, please make sure that you have logged in to your Facebook account in the app. You can also try clearing the apps cache and data. To do this, go to your devicesettings, find the app, and tap on "Storage". Then, tap on "Clear cache" and "Clear data".',
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Clear default share?'),
            children: [
              Text(
                'To clear the default share setting for an image, open the image and tap on the share button. Then, tap on the "More" button and select "Clear default share".',
              ),
            ],
          ),
          ExpansionTile(
            title: Text('I have upgraded, will it work across my all devices?'),
            children: [
              Text(
                'Yes, your upgrade will work across all of your devices as long as you are signed in to the same account on each device.',
              ),
            ],
          ),
          ExpansionTile(
            title: Text('How to remove watermark?'),
            children: [
              Text(
                'To remove the watermark from an image, you can purchase the pro version of the app. The pro version removes the watermark and also unlocks other features.',
              ),
            ],
          ),
          ExpansionTile(
            title: Text('How to add your watermark?'),
            children: [
              Text(
                'To add your watermark to an image, you can purchase the pro version of the app. The pro version allows you to add your own watermark to images.',
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Restore your purchase?'),
            children: [
              Text(
                'If you have accidentally deleted the app or if you have lost your device, you can restore your purchase by going to the Google Play Store and finding the app. Then, tap on the "Restore purchases" button.',
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Uninstall application completely?'),
            children: [
              Text(
                  'To uninstall the application completely, you can go to your devices settings and find the app. Then, tap on the "Uninstall" button.',
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Any other questions?'),
            children: [
              Text(
                  'If you have any other questions, please feel free to contact us through the apps support section.',
              ),
            ],
          ),
          ExpansionTile(
            title: Text('How to find out your in-app purchases?'),
            children: [
              Text(
                'To find out your in-app purchases, you can go to the Google Play Store and find the app. Then, tap on the "My apps & games" tab. Under "Purchased", you will see a list of all of the apps that you have purchased.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}