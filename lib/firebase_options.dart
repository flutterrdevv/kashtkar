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
    apiKey: 'AIzaSyC25Co4w83lld3CW81xxq150oACXItJ3xE',
    appId: '1:297784980968:web:10156f043a5277f71d605d',
    messagingSenderId: '297784980968',
    projectId: 'kashtkar-3f7a8',
    authDomain: 'kashtkar-3f7a8.firebaseapp.com',
    storageBucket: 'kashtkar-3f7a8.appspot.com',
    measurementId: 'G-DZGWBYF80Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLJV5-ZhlHObHvwxIFgoe5a5zMRF15TSQ',
    appId: '1:297784980968:android:5edb49c6c8d6bfe21d605d',
    messagingSenderId: '297784980968',
    projectId: 'kashtkar-3f7a8',
    storageBucket: 'kashtkar-3f7a8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5OIaRXoaHsMiGEA1CO0vxgV8W4AsPpFI',
    appId: '1:297784980968:ios:3b4ff62a348a589c1d605d',
    messagingSenderId: '297784980968',
    projectId: 'kashtkar-3f7a8',
    storageBucket: 'kashtkar-3f7a8.appspot.com',
    iosClientId: '297784980968-0huf56dieddreh81msere33ll7ohsd5i.apps.googleusercontent.com',
    iosBundleId: 'com.example.secondApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD5OIaRXoaHsMiGEA1CO0vxgV8W4AsPpFI',
    appId: '1:297784980968:ios:3b4ff62a348a589c1d605d',
    messagingSenderId: '297784980968',
    projectId: 'kashtkar-3f7a8',
    storageBucket: 'kashtkar-3f7a8.appspot.com',
    iosClientId: '297784980968-0huf56dieddreh81msere33ll7ohsd5i.apps.googleusercontent.com',
    iosBundleId: 'com.example.secondApp',
  );
}
