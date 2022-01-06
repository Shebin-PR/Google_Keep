import 'package:flutter/material.dart';

class AddNewNote extends StatefulWidget {
  const AddNewNote({Key? key}) : super(key: key);

  @override
  _AddNewNoteState createState() => _AddNewNoteState();
}

class _AddNewNoteState extends State<AddNewNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: const [
                Icon(
                  Icons.push_pin_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.drive_folder_upload_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: const [
            Text(
              "Title",
              style: TextStyle(fontSize: 30),
            ),
            TextField(
              // controller: _controller,
              maxLines: 25,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Note",
                hintStyle: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (ctx) => SizedBox(
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon:const Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              ),
                              
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.add_box_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.color_lens_outlined),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
