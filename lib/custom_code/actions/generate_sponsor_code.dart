// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:math';
import 'package:diacritic/diacritic.dart';

Future<String> generateSponsorCode(String userId) async {
  final FirebaseFirestore db = FirebaseFirestore.instance;
  final CollectionReference collection = db.collection('users');

  // Get the document for the specific user ID
  final DocumentSnapshot userDocSnapshot = await collection.doc(userId).get();

  // Check if the user document exists
  if (!userDocSnapshot.exists) {
    throw Exception('User not found!');
  }
  final userName =
      removeDiacritics(userDocSnapshot?['display_name']).toUpperCase() ?? 'JAM';
  final characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'.split('');

  String code;
  QuerySnapshot
      querySnapshot; // Déclarer la variable ici pour qu'elle soit visible dans la condition while
  do {
    code = '';
    for (int i = 0; i < 4; i++) {
      final randomIndex = Random().nextInt(characters.length);
      code += characters[randomIndex];
    }
    code = userName + "-" + code;

    // Exécutez la requête et assignez le résultat à la variable querySnapshot
    querySnapshot =
        await collection.where('sponsor_code', isEqualTo: code).get();
  } while (querySnapshot.docs
      .isNotEmpty); // La variable est maintenant définie et peut être utilisée ici

  // Si le code est unique, mettez à jour le document utilisateur
  await collection.doc(userId).update({'sponsor_code': code});
  return code;
}
