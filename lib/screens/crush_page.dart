import 'package:flutter/material.dart';

class CrushPage extends StatelessWidget {
  List<String> crushes;

  CrushPage({super.key, required this.crushes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My cruhes (${crushes.length})"),
      ),
      body: ListView(
        children: crushes
            .map((e) => ListTile(
                  leading: CircleAvatar(),
                  title: Text("$e"),
                  subtitle: Text("Apprend à faire les exercices"),
                  trailing: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
