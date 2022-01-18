import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_notes/Screens/addnotes.dart';
import 'package:google_notes/Widgets/drawer.dart';

class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const FloatingActionButtonLocation _fablocation =
        FloatingActionButtonLocation.endDocked;
    return Scaffold(
      backgroundColor: Colors.white,

      /// appbar starts ///
      ///
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blueGrey[100],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.blueGrey[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Search your notes",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 8,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.grid_view,
                          color: Colors.black,
                        ),
                      ),
                      ClipOval(
                        child: Image.asset(
                          "assets/images/avatar.png",
                          scale: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      /// appbar ends ///
      ///

      drawer: const DrawerWidget(),

      /// body starts ///
      ///
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("data").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: [
              ...snapshot.data!.docs.map((document) {
                return Column(
                  children: [
                    Text(
                      document["title"].toString(),
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(document["notes"].toString())
                  ],
                );
              }),
            ],
          );
        },
      ),

      /// body ends
      ///
      /// Bottom app bar starts ///
      ///
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey[100],
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.domain_verification_sharp,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.brush_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mic_none_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.image_outlined),
            ),
          ],
        ),
      ),

      /// Bottom app bar ends ///
      ///
      /// floating action button starts ///
      ///
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddNewNote()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "assets/images/add.png",
                scale: 5,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: _fablocation,

      /// floating action button ends ///
      ///
    );
  }
}
