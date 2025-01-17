// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCYgl5vTkzPNGFzt0lqvFlTnrj7pYMZmGo',
    appId: '1:708837297818:web:8b7aefd103d4bb6e219923',
    messagingSenderId: '708837297818',
    projectId: 'fir-project-3540a',
    authDomain: 'fir-project-3540a.firebaseapp.com',
    storageBucket: 'fir-project-3540a.appspot.com',
    measurementId: 'G-D6H0T07GMS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbSzNbwk4qR-s0riw1mF8QTVSLYmpqkLc',
    appId: '1:708837297818:android:90af7ecc67ad06b2219923',
    messagingSenderId: '708837297818',
    projectId: 'fir-project-3540a',
    storageBucket: 'fir-project-3540a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPxjPpZAmkZM1R3J9sRCst95rR3qP9oyo',
    appId: '1:708837297818:ios:e318aedc4d63642a219923',
    messagingSenderId: '708837297818',
    projectId: 'fir-project-3540a',
    storageBucket: 'fir-project-3540a.appspot.com',
    iosBundleId: 'com.example.firebaseTuitorial',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCYgl5vTkzPNGFzt0lqvFlTnrj7pYMZmGo',
    appId: '1:708837297818:web:ff3e2d67600a10fb219923',
    messagingSenderId: '708837297818',
    projectId: 'fir-project-3540a',
    authDomain: 'fir-project-3540a.firebaseapp.com',
    storageBucket: 'fir-project-3540a.appspot.com',
    measurementId: 'G-R90P9M2PTN',
  );
}
