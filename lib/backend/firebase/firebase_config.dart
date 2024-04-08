import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCCBUK4Adkrigr7PTpsu7YcRMNdYNsnayM",
            authDomain: "site-engesep-kmvol8.firebaseapp.com",
            projectId: "site-engesep-kmvol8",
            storageBucket: "site-engesep-kmvol8.appspot.com",
            messagingSenderId: "557691228992",
            appId: "1:557691228992:web:d56d40d29f5684b89c60a5"));
  } else {
    await Firebase.initializeApp();
  }
}
