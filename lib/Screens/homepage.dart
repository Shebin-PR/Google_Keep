import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_notes/Screens/login.dart';
import 'package:google_notes/Screens/notes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          );
        } else if (snapshot.hasData) {
          return const Notes();
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Something went wrong"),
          );
        } else {
          return const Loginpage();
        }
      },
    );
  }
}
