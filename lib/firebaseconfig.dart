import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:math';
class firebaseconfig {
  var db = FirebaseFirestore.instance;
  late String docId = "";
  var rng = Random();
  addFavourite(imgUrl) {
    final data = {"imgUrl": '${imgUrl}'};
    db.collection("favourites").add(data).then((documentSnapshot) {
      print("Added Data with ID: ${documentSnapshot.id}");
      var Id = documentSnapshot.id;
      docId = Id;
      return Id;
    });
  }
  Int8List? _bytes;

  void _getBytes(imageUrl) async {
    final ByteData data = await NetworkAssetBundle(Uri.parse(imageUrl)).load(imageUrl);
    _bytes = data.buffer.asInt8List();
    print(_bytes);

  }
  addMyCreation( imgUrl) async{
     final data={"imgUrl":imgUrl};
     print(imgUrl);
    db.collection("mycreations").add(data).then((documentSnapshot) {
      print("Added Data with ID: ${documentSnapshot.id}");
      var Id = documentSnapshot.id;
      docId = Id;
      return Id;
    });
  }



  deleteFavourited(String imgUrl) {
    db.collection("favourites").doc(docId).delete().then(
          (doc) => print("Document deletedwith id:  ${docId}"),
          onError: (e) => print("Error updating document $e"),
        );
  }


  deleteMycreation(String imgUrl) {
    db.collection("mycreations").doc(docId).delete().then(
          (doc) => print("Document deletedwith id:  ${docId}"),
          onError: (e) => print("Error updating document $e"),
        );
  }


  Future<List<String>> fetchImages() async {
    List<String> imageUrls = [];
    db.collection("quotes").get().then((querySnapshot) {
      print("Successfully completed");
      for (var docSnapshot in querySnapshot.docs) {
        imageUrls.add('${docSnapshot.data()['imgUrl']}');
      }
      print("Here are all the image Urls");
      print(imageUrls);
      onError:
      (e) => print("Error completing: $e");
    });
    return imageUrls;
  }




  // Future<List<ByteData>> fetchMyCreations() async {
  //   List<ByteData> imageUrls = [];
  //   db.collection("mycreations").get().then((querySnapshot) {
  //     print("Successfully completed");
  //     for (var docSnapshot in querySnapshot.docs) {
  //       imageUrls.add(
  //           NetworkAssetBundle(Uri.parse('${docSnapshot.data()['imgUrl']}'))
  //               .load('${docSnapshot.data()['imgUrl']}') as ByteData);
  //     }
  //     print("Here are all the image Urls");
  //     print(imageUrls);
  //     onError:
  //     (e) => print("Error completing: $e");
  //   });
  //   return imageUrls;
  // }


  Future<List<String>> fetchFavourites() async {
    List<String> imageUrls = [];
    db.collection("favourites").get().then((querySnapshot) {
      print("Successfully completed");
      for (var docSnapshot in querySnapshot.docs) {
        imageUrls.add('${docSnapshot.data()["imgUrl"].toString()}');
      }
      print("Here are all the image Urls for fetch favourites");
      print(imageUrls);
      onError:
      (e) => print("Error completing: $e");
    });
    return imageUrls;
  }
}
