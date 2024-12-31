import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCgLDZ2zFiEEG5oJUv7TlxJ4Ys8SqS_Ono",
            authDomain: "dms-system-7278b.firebaseapp.com",
            projectId: "dms-system-7278b",
            storageBucket: "dms-system-7278b.appspot.com",
            messagingSenderId: "649432534185",
            appId: "1:649432534185:web:f4db6cfc90f0142ae8edb8",
            measurementId: "G-P64YSFWNGW"));
  } else {
    await Firebase.initializeApp();
  }
}
