import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:motivationalquotesapp/imagedetails.dart';
import 'package:motivationalquotesapp/firebaseconfig.dart';
class alone extends StatefulWidget {
  const alone(BuildContext context, {Key? key}) : super(key: key);
  @override
  State<alone> createState() => _aloneState();
}

class _aloneState extends State<alone> {
  var db = FirebaseFirestore.instance;
  var ff=firebaseconfig();
  List<String> imageUrls=[];
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
     Firebase.initializeApp();
    super.initState();
   ff.fetchImages().then((List<String> list)=>{
     setState((){
             imageUrls =list;
     }),
     setState(() { })
   });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 5,
          title: Text("Alone"),
        ),
        body:
       GridView.count(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisCount: 2,
                children:
                imageUrls.map((e) =>
                    GestureDetector(
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ImageDetailsScreen(imagePath:e)));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(e),
                      ),
                    )
                ).toList(),
              )
    );
            }
  
  }

