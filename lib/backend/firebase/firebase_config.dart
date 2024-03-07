import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCvQ4OpBexgbY2ss60V8Civ60cdED7k14I",
            authDomain: "jam-solidaire-dpkmcc.firebaseapp.com",
            projectId: "jam-solidaire-dpkmcc",
            storageBucket: "jam-solidaire-dpkmcc.appspot.com",
            messagingSenderId: "565986806801",
            appId: "1:565986806801:web:99d8b304a7cb5cf45175b0"));
  } else {
    await Firebase.initializeApp();
  }
}
