// ignore_for_file: deprecated_member_use

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_dersleri/firestore_islemleri.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirestoreIslemleri(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late FirebaseAuth auth;
  final String _email = 'halilbugday3@gmail.com';
  final String _password = 'password';

  @override
  void initState() {
    super.initState();
    auth = FirebaseAuth.instance;

    auth.authStateChanges().listen((User? user) {
      if (user == null) {
        debugPrint('User oturumu kapalı');
      } else {
        debugPrint('User oturum açık ${user.email} ve email durumu ${user.emailVerified}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                createUserEmailAndPassword();
              },
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: const Text('Email/Sifre Kayıt'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                loginUserEmailAndPassword();
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              child: const Text('Email/Sifre Giris'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                signOutUser();
              },
              style: ElevatedButton.styleFrom(primary: Colors.yellow),
              child: const Text('Oturumu Kapat'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                deleteUser();
              },
              style: ElevatedButton.styleFrom(primary: Colors.purple),
              child: const Text('Kullanıcıyı sil'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                changePassword();
              },
              style: ElevatedButton.styleFrom(primary: Colors.brown),
              child: const Text('Parola Değiştir'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                changeEmail();
              },
              style: ElevatedButton.styleFrom(primary: Colors.pink),
              child: const Text('Email Değiştir'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                googleIleGiris();
              },
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: const Text('gmail ile giriş '),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                loginWithPhoneNumber();
              },
              style: ElevatedButton.styleFrom(primary: Colors.amber),
              child: const Text('Tel no ile giriş '),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  void loginWithPhoneNumber() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+905500000000',
      verificationCompleted: (PhoneAuthCredential credential) async {
        debugPrint('verification completed tetiklendi');
        debugPrint(credential.toString());
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        debugPrint(e.toString());
      },
      codeSent: (String verificationId, int? resendToken) async {
        String smsCode = "123456";
        debugPrint('code sent tetiklendi');
        var credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);

        await auth.signInWithCredential(credential);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        debugPrint('code auto retrieval timeout');
      },
    );
  }

  void createUserEmailAndPassword() async {
    try {
      var userCredential = await auth.createUserWithEmailAndPassword(email: _email, password: _password);
      var myUser = userCredential.user;

      if (!myUser!.emailVerified) {
        await myUser.sendEmailVerification();
      } else {
        debugPrint('kullanıcın maili onaylanmış, ilgili sayfaya gidebilir.');
      }

      debugPrint(userCredential.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void loginUserEmailAndPassword() async {
    try {
      var userCredential = await auth.signInWithEmailAndPassword(email: _email, password: _password);
      debugPrint(userCredential.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void signOutUser() async {
    var user = GoogleSignIn().currentUser;
    if (user != null) {
      await GoogleSignIn().signOut();
    }
    await auth.signOut();
  }

  void deleteUser() async {
    if (auth.currentUser != null) {
      await auth.currentUser!.delete();
    } else {
      debugPrint('Kullanıcı oturum açmadığı için silinemez');
    }
  }

  void changePassword() async {
    try {
      await auth.currentUser!.updatePassword('password');
      await auth.signOut();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        debugPrint('reauthenticate olunacak');
        var credential = EmailAuthProvider.credential(email: _email, password: _password);
        await auth.currentUser!.reauthenticateWithCredential(credential);

        await auth.currentUser!.updatePassword('password');
        await auth.signOut();
        debugPrint('şifre güncellendi');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void googleIleGiris() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  void changeEmail() async {
    try {
      await auth.currentUser!.updateEmail('halil@halil.com');
      await auth.signOut();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        debugPrint('reauthenticate olunacak');
        var credential = EmailAuthProvider.credential(email: _email, password: _password);
        await auth.currentUser!.reauthenticateWithCredential(credential);

        await auth.currentUser!.updateEmail('halil@gmail.com');
        await auth.signOut();
        debugPrint('email güncellendi');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
