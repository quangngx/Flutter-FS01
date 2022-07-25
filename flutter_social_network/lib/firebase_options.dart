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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
      // ignore: no_default_cases
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBFQGs6wZH9M1vWy3xDsRkGZ--IpsBrvpM',
    appId: '1:340925110703:web:2dc031cc2f7b20bbf9f75a',
    messagingSenderId: '340925110703',
    projectId: 'flutter-social-app-9db23',
    authDomain: 'flutter-social-app-9db23.firebaseapp.com',
    storageBucket: 'flutter-social-app-9db23.appspot.com',
    measurementId: 'G-4MFXGPYB4M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD4JzyV1Hxs8LKPxFWQUET0D8kouMKGsAU',
    appId: '1:340925110703:android:85cfbcc5f3e43cd7f9f75a',
    messagingSenderId: '340925110703',
    projectId: 'flutter-social-app-9db23',
    storageBucket: 'flutter-social-app-9db23.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2ZnTGXk3TB32stcPrgDHv6FIJ3Od8HBE',
    appId: '1:340925110703:ios:605a7777715870e3f9f75a',
    messagingSenderId: '340925110703',
    projectId: 'flutter-social-app-9db23',
    storageBucket: 'flutter-social-app-9db23.appspot.com',
    iosClientId: '340925110703-b6abv37ocs9gs6evpvvm0q3k1cpj4vsp.apps.googleusercontent.com',
    iosBundleId: 'com.fluttersocial.app',
  );
}
