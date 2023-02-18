import 'package:flutter/material.dart';

import '../widget/about_images.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ajouter un client"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                const AboutImage(),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Nom  *",
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Adresse e-mail  *",
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Numero de telephone  *",
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    icon: Icon(Icons.home_work_outlined),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Adresse*",
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    icon: Icon(Icons.calendar_month),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Date d'inventaire  *",
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 8),
                  //alignment: Alignment.center,
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Wrap(
                    children: const [
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          icon: Icon(Icons.description),
                          iconColor: Colors.red,
                          fillColor: Color(0xFFBE0019),
                          hintText:
                              "Entrez d'autre information relative a ce client",
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8.0)),
                    height: 50,
                    width: 300,
                    child: const Text(
                      "Sauvegarder",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
