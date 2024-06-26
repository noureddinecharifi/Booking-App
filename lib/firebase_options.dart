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
    apiKey: 'AIzaSyBOsJu0JaR8lVMV_5Yxm5yd5VjxD9h4cNc',
    appId: '1:140641399152:web:6434c2acd8e7e19b2a5fb5',
    messagingSenderId: '140641399152',
    projectId: 'air-trip-fa3ae',
    authDomain: 'air-trip-fa3ae.firebaseapp.com',
    storageBucket: 'air-trip-fa3ae.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2GaBdotQ5FJvRGZwr0GRGFU2rUViFWuo',
    appId: '1:140641399152:android:950e65cfdd48bff52a5fb5',
    messagingSenderId: '140641399152',
    projectId: 'air-trip-fa3ae',
    storageBucket: 'air-trip-fa3ae.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHBJrI5b2grnmHHlVONScur0OkhyYLZkk',
    appId: '1:140641399152:ios:78027f31639352ed2a5fb5',
    messagingSenderId: '140641399152',
    projectId: 'air-trip-fa3ae',
    storageBucket: 'air-trip-fa3ae.appspot.com',
    iosBundleId: 'com.example.bookingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDHBJrI5b2grnmHHlVONScur0OkhyYLZkk',
    appId: '1:140641399152:ios:ec361c9ca611ab8c2a5fb5',
    messagingSenderId: '140641399152',
    projectId: 'air-trip-fa3ae',
    storageBucket: 'air-trip-fa3ae.appspot.com',
    iosBundleId: 'com.example.bookingApp.RunnerTests',
  );
}
