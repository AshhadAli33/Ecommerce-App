
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
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
    apiKey: 'AIzaSyAUBqQiaMJ7EMyMBx4re-8jierrGdxBISk',
    appId: '1:184823449831:web:15b7f6262b1c753688fa42',
    messagingSenderId: '184823449831',
    projectId: 'e-commerce-f4018',
    authDomain: 'e-commerce-f4018.firebaseapp.com',
    storageBucket: 'e-commerce-f4018.appspot.com',
    measurementId: 'G-929MB5RSQJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuDFIEMhmuFHhxSQlQFWn3mOQJdHWszbE',
    appId: '1:184823449831:android:2153af44fa6389f188fa42',
    messagingSenderId: '184823449831',
    projectId: 'e-commerce-f4018',
    storageBucket: 'e-commerce-f4018.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpXKiYumZpTj09YL0H7HZ6XAFjOTwvsQ8',
    appId: '1:184823449831:ios:c0693aaae81a438988fa42',
    messagingSenderId: '184823449831',
    projectId: 'e-commerce-f4018',
    storageBucket: 'e-commerce-f4018.appspot.com',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpXKiYumZpTj09YL0H7HZ6XAFjOTwvsQ8',
    appId: '1:184823449831:ios:c0693aaae81a438988fa42',
    messagingSenderId: '184823449831',
    projectId: 'e-commerce-f4018',
    storageBucket: 'e-commerce-f4018.appspot.com',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAUBqQiaMJ7EMyMBx4re-8jierrGdxBISk',
    appId: '1:184823449831:web:9604c90a3b03d46d88fa42',
    messagingSenderId: '184823449831',
    projectId: 'e-commerce-f4018',
    authDomain: 'e-commerce-f4018.firebaseapp.com',
    storageBucket: 'e-commerce-f4018.appspot.com',
    measurementId: 'G-F1E7W5L875',
  );
}
