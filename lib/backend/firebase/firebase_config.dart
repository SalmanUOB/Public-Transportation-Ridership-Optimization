import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDZRcMkSa-_T3_1jwsrIsF802xUn1soGRE",
            authDomain: "test-project-1c4i8k.firebaseapp.com",
            projectId: "test-project-1c4i8k",
            storageBucket: "test-project-1c4i8k.appspot.com",
            messagingSenderId: "322045748395",
            appId: "1:322045748395:web:8d44fb97af93e5b46ac3ee"));
  } else {
    await Firebase.initializeApp();
  }
}
