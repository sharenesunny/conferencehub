import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAqPXuBRoM--Xj7UiCW4-SoRqfZ4vC3EHo",
            authDomain: "compliance-unit.firebaseapp.com",
            projectId: "compliance-unit",
            storageBucket: "compliance-unit.appspot.com",
            messagingSenderId: "377863345004",
            appId: "1:377863345004:web:c724f53eb20afc2d33d949"));
  } else {
    await Firebase.initializeApp();
  }
}
