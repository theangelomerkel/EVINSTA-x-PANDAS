import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCoQuqz5QU9JDIooowUZQjDNQ6CUOfMcxs",
            authDomain: "evinsta-dd82f.firebaseapp.com",
            projectId: "evinsta-dd82f",
            storageBucket: "evinsta-dd82f.appspot.com",
            messagingSenderId: "432591949554",
            appId: "1:432591949554:web:9031897831cd0125528a6b",
            measurementId: "G-R2HVMJVJV5"));
  } else {
    await Firebase.initializeApp();
  }
}
