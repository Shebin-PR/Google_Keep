import 'package:flutter/material.dart';
import 'package:google_notes/Screens/notes.dart';
import 'package:google_notes/Screens/settings.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: RichText(
              text: TextSpan(
                text: "G",
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  letterSpacing: 0.5,
                ),
                children: [
                  const TextSpan(
                    text: "o",
                    style: TextStyle(color: Colors.red),
                  ),
                  const TextSpan(
                    text: "o",
                    style: TextStyle(color: Colors.yellow),
                  ),
                  const TextSpan(
                    text: "g",
                    style: TextStyle(color: Colors.blue),
                  ),
                  const TextSpan(
                    text: "l",
                    style: TextStyle(color: Colors.green),
                  ),
                  const TextSpan(
                    text: "e",
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(
                    text: " Keep",
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Notes(),
                        ),
                      );
                    },
                    leading: Icon(
                      Icons.lightbulb_outline,
                      color: Colors.blueGrey[900],
                    ),
                    title: Text(
                      "Notes",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.blueGrey[900],
                  ),
                  title: Text(
                    "Reminders",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.add,
                    color: Colors.blueGrey[900],
                  ),
                  title: Text(
                    "Create new label",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.archive_outlined,
                    color: Colors.blueGrey[900],
                  ),
                  title: Text(
                    "Archive",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.delete_outline_outlined,
                    color: Colors.blueGrey[900],
                  ),
                  title: Text(
                    "Deleted",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) => const Settings()),
                    );
                  },
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Colors.blueGrey[900],
                  ),
                  title: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.help_outline_outlined,
                    color: Colors.blueGrey[900],
                  ),
                  title: Text(
                    "Help & feedback",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
