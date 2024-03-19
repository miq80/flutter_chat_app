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
    apiKey: 'AIzaSyD9AHEh3XQPV49PoSa4v55Cqzl5hZQibwI',
    appId: '1:906664052264:web:083ef5fefc5dd20006971d',
    messagingSenderId: '906664052264',
    projectId: 'flutter-chat-app-a9739',
    authDomain: 'flutter-chat-app-a9739.firebaseapp.com',
    storageBucket: 'flutter-chat-app-a9739.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC3mlx8okEQ54KLFmZfzN00fRk1i5a6mWM',
    appId: '1:906664052264:android:336af6c8a8dad38f06971d',
    messagingSenderId: '906664052264',
    projectId: 'flutter-chat-app-a9739',
    storageBucket: 'flutter-chat-app-a9739.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClqcWS-dQ11qXPje2dCESwZ8k8uS_0uMs',
    appId: '1:906664052264:ios:56119db191fa2bba06971d',
    messagingSenderId: '906664052264',
    projectId: 'flutter-chat-app-a9739',
    storageBucket: 'flutter-chat-app-a9739.appspot.com',
    iosBundleId: 'com.example.chapApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClqcWS-dQ11qXPje2dCESwZ8k8uS_0uMs',
    appId: '1:906664052264:ios:11ed022f29cd921806971d',
    messagingSenderId: '906664052264',
    projectId: 'flutter-chat-app-a9739',
    storageBucket: 'flutter-chat-app-a9739.appspot.com',
    iosBundleId: 'com.example.chapApplication.RunnerTests',
  );
}