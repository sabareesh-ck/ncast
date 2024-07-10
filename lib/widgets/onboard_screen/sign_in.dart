import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ncast/l10n/app_localizations.dart';
import 'package:ncast/screen/home_screen.dart';

final auth = FirebaseAuth.instance;

class SignIn extends StatefulWidget {
  const SignIn({
    super.key,
  });

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var loading = false;
  final db = FirebaseFirestore.instance;
  Future<void> signInWithGoogle({required BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      await auth.signInWithCredential(credential);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        setState(() {
          loading = true;
        });
        await signInWithGoogle(context: context);
        final userinfo = {
          'name': FirebaseAuth.instance.currentUser!.displayName,
          'profile_picture': FirebaseAuth.instance.currentUser!.photoURL,
        };
        await db
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .set(userinfo);
        // ignore: use_build_context_synchronously
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => const HomeScreen()));
      },
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(const Color(0xFF4C0099))),
      child: loading
          ? const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 8),
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Text(
                AppLocalizations.of(context)!.signIn,
                style: const TextStyle(
                    color: Color(0xFFFFFFFF), fontWeight: FontWeight.w600),
              ),
            ),
    );
  }
}
