// Create a storage reference from our app
import 'package:firebase_storage/firebase_storage.dart';

final storageRef = FirebaseStorage.instance.ref();

// Create a reference with an initial file path and name
final pathReference = storageRef.child("images/stars.jpg");

// Create a reference to a file from a Google Cloud Storage URI
final gsReference =
FirebaseStorage.instance.refFromURL("gs://YOUR_BUCKET/images/stars.jpg");

// Create a reference from an HTTPS URL
// Note that in the URL, characters are URL escaped!
final httpsReference = FirebaseStorage.instance.refFromURL(
    "https://firebasestorage.googleapis.com/b/motivationalquotesapp/o/images%20stars.jpg");