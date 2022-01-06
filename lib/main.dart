// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_notes/Getx/controller.dart';
import 'package:google_notes/Screens/homepage.dart';
import 'package:google_notes/Screens/login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: "/homepage",
          page: () => const HomePage(),
          binding: GoogleAuthBinding(),
        )
      ],
      initialRoute: "/homepage",
    );
  }
}
