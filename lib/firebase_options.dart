import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:firebase_core/firebase_core.dart' show Firebase, FirebaseOptions;

Future<void> main() async {
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print('Error initializing Firebase: $e');
    // Handle initialization error as needed.
  }

  // Your other code...
}

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
    apiKey: 'AIzaSyCwlpGt-EAqZ2R9c36qREsp-ai33aqBxIg',
    appId: '1:32759376115:web:e84152a63d6155ba6cef86',
    messagingSenderId: '32759376115',
    projectId: 'mmsproject-cb700',
    authDomain: 'mmsproject-cb700.firebaseapp.com',
    storageBucket: 'mmsproject-cb700.appspot.com',
    measurementId: 'G-4RLRT3XBF6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBkaXSj2Nqr4qYFHa3B0rExemQ5OeuQSmw',
    appId: '1:32759376115:android:e8ce1a734dcb9de86cef86',
    messagingSenderId: '32759376115',
    projectId: 'mmsproject-cb700',
    storageBucket: 'mmsproject-cb700.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAN9nXDWB0dCYrw-oHimYCLcrV3p4u12VU',
    appId: '1:32759376115:ios:55e3b86105ae6f506cef86',
    messagingSenderId: '32759376115',
    projectId: 'mmsproject-cb700',
    storageBucket: 'mmsproject-cb700.appspot.com',
    iosBundleId: 'com.example.mmsProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAN9nXDWB0dCYrw-oHimYCLcrV3p4u12VU',
    appId: '1:32759376115:ios:7d27c73dcbdc52e56cef86',
    messagingSenderId: '32759376115',
    projectId: 'mmsproject-cb700',
    storageBucket: 'mmsproject-cb700.appspot.com',
    iosBundleId: 'com.example.mmsProject.RunnerTests',
  );
}
