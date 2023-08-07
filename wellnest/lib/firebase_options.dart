// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBzIKoZtkVPJLR3os1Jfq2PMSsZRwX2HVQ',
    appId: '1:582240298335:web:4646fb69d654f1ce8382ea',
    messagingSenderId: '582240298335',
    projectId: 'wellnest-app',
    authDomain: 'wellnest-app.firebaseapp.com',
    storageBucket: 'wellnest-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvI1aye6bs6weo4B3VK6WOr3BzLaGFmio',
    appId: '1:582240298335:android:77379fc1a382f4c68382ea',
    messagingSenderId: '582240298335',
    projectId: 'wellnest-app',
    storageBucket: 'wellnest-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC1NBhPLPNOhU9NhGKD1wE0K0rgSS3OdvU',
    appId: '1:582240298335:ios:b0d19ccfb68423998382ea',
    messagingSenderId: '582240298335',
    projectId: 'wellnest-app',
    storageBucket: 'wellnest-app.appspot.com',
    iosClientId: '582240298335-clct9rnn5cn3bh54av2lqt9pqqn408bs.apps.googleusercontent.com',
    iosBundleId: 'com.example.wellnest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC1NBhPLPNOhU9NhGKD1wE0K0rgSS3OdvU',
    appId: '1:582240298335:ios:b117bfae9afd345d8382ea',
    messagingSenderId: '582240298335',
    projectId: 'wellnest-app',
    storageBucket: 'wellnest-app.appspot.com',
    iosClientId: '582240298335-gpf40ene7sumuol4bh38u8ceflafn7tf.apps.googleusercontent.com',
    iosBundleId: 'com.example.wellnest.RunnerTests',
  );
}
