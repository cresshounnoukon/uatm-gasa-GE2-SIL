import 'package:flutter/material.dart';
import 'package:untitled/screens/crush_page.dart';
import 'package:untitled/screens/persons_create_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> roomMates = [
    "Prince 🤴  ",
    "Louange 🎤🎤",
    "Jonathan🎙️",
    "Beauris ",
    "Mich-kath 💃💃",
    "Mendel 🧑‍💻🧑‍💻",
    "Emery",
    "Godwill 🙏🙏",
    "Fadyl",
    "Peniel",
  ];
  List<String> crushs = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Room mate"),
        actions: [IconButton(onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CrushPage(crushes: crushs),));
        }, icon: Icon(Icons.favorite))],
      ),
      body: ListView(
        children: roomMates.reversed
            .map((e) =>
            ListTile(
          onTap: () {
            addItemToCrush(e);
          setState(() {

          });
          },
                  leading: CircleAvatar(),
                  title: Text("$e"),
                  subtitle: Text("Apprend à faire les exercices"),
                  trailing: Icon(
                    Icons.favorite,
                    color: checkCrush(e) ? Colors.red : Colors.black,
                  ),
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          var name=await Navigator.push(context, MaterialPageRoute(builder: (context) => PersonCreatePage(),));
        print(name);
          },
        child: Icon(Icons.add),
      ),
    );
  }

  addItemToCrush(String item) {
    if (checkCrush(item)) {
      crushs.remove(item);
    } else {
      crushs.add(item);
    }
  }

  bool checkCrush(String item) {
    return crushs.contains(item);
  }
}
