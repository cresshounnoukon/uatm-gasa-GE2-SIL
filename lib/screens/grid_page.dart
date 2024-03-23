import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("jjdd"),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      drawer: Drawer(
     child: ListView(

       children: [
         DrawerHeader(child: CircleAvatar()),

         ListTile(
           title: Text("Menu 1",),
           leading: Icon(Icons.home),
           trailing: Icon(Icons.keyboard_arrow_right),
           onTap: () {
Navigator.pop(context);

           },
         ),
       ],
     ),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.bottomCenter,
               end: Alignment.topCenter,


                 colors: [
               Colors.green,
               Colors.teal,
               Colors.yellow,
               Colors.purple,
               Colors.red,
             ]

             )
           ),
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
