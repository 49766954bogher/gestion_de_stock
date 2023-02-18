import 'package:flutter/material.dart';

import '../widget/about_images.dart';

class Categoty extends StatefulWidget {
  const Categoty({super.key});

  @override
  State<Categoty> createState() => _CategotyState();
}

class _CategotyState extends State<Categoty> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ajouter un category"),
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
                    icon: Icon(Icons.category),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Nom  *",
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
                          hintText: "Veuillez d'ecrire le groupr de produits",
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
