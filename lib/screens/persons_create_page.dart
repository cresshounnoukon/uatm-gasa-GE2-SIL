import 'package:flutter/material.dart';

class PersonCreatePage extends StatefulWidget {
  const PersonCreatePage({super.key});

  @override
  State<PersonCreatePage> createState() => _PersonCreatePageState();
}

class _PersonCreatePageState extends State<PersonCreatePage> {
  DateTime? currentDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formulaire"),
      ),
      body: Container(
        padding: EdgeInsets.all(10
        ),
        child: Form(
          child:ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Nom"
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Prénom"
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Mail"
                ),
              ),
              TextButton(onPressed:() async {
                print("Comment allez vous?");
                var date=await showDatePicker(context: context,
                    firstDate:DateTime(2023),
                    lastDate: DateTime(2025));
                print("La date du jour est : $date");
                setState(() {
                  currentDate=date;
                });
              }, child: Text(
                "Ajoutez une date de naissance"
              )),
              Text("La date du jour est $currentDate"),
              ElevatedButton(onPressed: () {
                Navigator.pop(context,"Louange");


              },
                  child: Text("retour"))
            ],
            
          ),

        ),
      ),

    );
  }
}
