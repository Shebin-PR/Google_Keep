import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_notes/Getx/controller.dart';
import 'package:google_notes/Screens/login.dart';
import 'package:google_notes/Screens/notes.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
      final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.offAll(() => const Notes());
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.black, fontSize: 28),
        ),
      ),
      body: GetBuilder<GoogleAuthController>(
        builder: (_controller) {
          return Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(user!.photoURL!),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Name : ${user.displayName!}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Text(
                    "E-mail : ${user.email!}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () {
                    _controller.logout();
                    Get.offAll(() => const Loginpage());
                  },
                  icon: const Icon(
                    Icons.logout,
                  ),
                  label: const Text("Logout"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
