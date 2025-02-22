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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCe80yJzB8xYmP39O1sJRcJXGqU0HJO5Pc',
    appId: '1:257575359358:web:772d699116827c92b4992f',
    messagingSenderId: '257575359358',
    projectId: 'app-login-3ae17',
    authDomain: 'app-login-3ae17.firebaseapp.com',
    storageBucket: 'app-login-3ae17.appspot.com',
    measurementId: 'G-RKLWX7GCD4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAfGxDtOo0NcXyX0yD5XKlWvlGPWorQitU',
    appId: '1:257575359358:android:44fc81c6bede45d8b4992f',
    messagingSenderId: '257575359358',
    projectId: 'app-login-3ae17',
    storageBucket: 'app-login-3ae17.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCe80yJzB8xYmP39O1sJRcJXGqU0HJO5Pc',
    appId: '1:257575359358:web:85f655e79d3a4a49b4992f',
    messagingSenderId: '257575359358',
    projectId: 'app-login-3ae17',
    authDomain: 'app-login-3ae17.firebaseapp.com',
    storageBucket: 'app-login-3ae17.appspot.com',
    measurementId: 'G-Y7VN0S341Z',
  );
}
