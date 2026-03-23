// lib/firebase_options.dart
//
// ══════════════════════════════════════════════════════════════════════════════
// CE FICHIER EST GÉNÉRÉ AUTOMATIQUEMENT PAR FIREBASE
// Ne pas modifier manuellement
//
// COMMENT OBTENIR CE FICHIER :
// 1. Va sur https://console.firebase.google.com
// 2. Crée un projet (ou utilise un existant)
// 3. Clique sur l'icône Android pour ajouter une app Android
//    - Package name : com.example.gestion_app
// 4. Télécharge google-services.json
// 5. Dans FlutLab.io, utilise la commande :
//    flutterfire configure
//    → Cela génère automatiquement ce fichier
//
// OU manuellement, remplace les valeurs ci-dessous par les tiennes
// (trouvées dans Paramètres du projet > Général > Tes apps)
// ══════════════════════════════════════════════════════════════════════════════

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return web;
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'Plateforme non supportée: $defaultTargetPlatform',
        );
    }
  }

  // ── REMPLACE CES VALEURS PAR LES TIENNES ──────────────────────────────────
  // Trouve-les dans Firebase Console > Paramètres > Général > Tes apps

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'TON_API_KEY_ANDROID',              // ← remplace
    appId: '1:XXXXXXXXXX:android:XXXXXXXXXX',   // ← remplace
    messagingSenderId: 'XXXXXXXXXX',             // ← remplace
    projectId: 'ton-projet-firebase',            // ← remplace
    storageBucket: 'ton-projet-firebase.appspot.com', // ← remplace
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'TON_API_KEY_IOS',                  // ← remplace
    appId: '1:XXXXXXXXXX:ios:XXXXXXXXXX',        // ← remplace
    messagingSenderId: 'XXXXXXXXXX',             // ← remplace
    projectId: 'ton-projet-firebase',            // ← remplace
    storageBucket: 'ton-projet-firebase.appspot.com', // ← remplace
    iosBundleId: 'com.example.gestionApp',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'TON_API_KEY_WEB',                  // ← remplace
    appId: '1:XXXXXXXXXX:web:XXXXXXXXXX',        // ← remplace
    messagingSenderId: 'XXXXXXXXXX',             // ← remplace
    projectId: 'ton-projet-firebase',            // ← remplace
    storageBucket: 'ton-projet-firebase.appspot.com', // ← remplace
    authDomain: 'ton-projet-firebase.firebaseapp.com', // ← remplace
  );
}
