// import 'package:get/get.dart';
//
// import 'firebaseconfig.dart';
//
// class imagesController extends GetxController {
//   final allImages=<String>[].obs;
//
//
//
//     @override
//   void onReady() {
//       getAllimages();
//     super.onReady();
//   }
//
//   Future <void> getAllimages() async {
//     List<String> imgName = [
//       "1",       "2",          "3",
//       "4",      "5",
//       "6",      "7",
//       "8",      "9",
//       "10",       "11",
//       "12",      "13",
//       "14",      "15",
//       "16",      "17",
//       "18",      "19",
//       "20",      "21",
//       "22",      "23",
//       "24",     "25",
//       "26",      "27",      "28",      "29",      "30",      "31",
//       "32",      "33",
//       "34",      "35",
//       "36",      "37",
//       "38",      "39",
//       "40",      "41",
//       "42",      "43",
//       "44",      "45",
//       "46"];
//
//     try {       for (var img in imgName) {
// final imgUrl= await Get.find<FirebaseStorageService>().getImage(img);
//      allImages.add(imgUrl!);
//       }
//     } catch (E) {
//       print(E);
//     }
//   }
// }
