import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_notes/Getx/controller.dart';
import 'package:google_notes/Screens/notes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.solidFileAlt,
                size: 200,
                color: Colors.yellow[700],
              ),
            ),
          ),
          const Text(
            "Capture anything",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Make lists, take photos, speak your mind -\n whatever works for you, works in keep.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GetBuilder<GoogleAuthController>(
              builder: (_controller) {
                return ElevatedButton.icon(
                  onPressed: () {
                    _controller.googleLogin();
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                  ),
                  label: const Text(
                    "Continue with google",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Text(
              "Already have an account ? Sign in",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
