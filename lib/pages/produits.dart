import 'package:flutter/material.dart';

import '../widget/about_images.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ajouter un produit"),
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
                    hintText: "Category  *",
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Fournisseur  *",
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: Icon(Icons.description),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Designation  *",
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    icon: Icon(Icons.add_box_rounded),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Quantité  *",
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    icon: Icon(Icons.attach_money_outlined),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Prix dachat *",
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    icon: Icon(Icons.attach_money_outlined),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Prix de vente  *",
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    icon: Icon(Icons.calendar_month),
                    iconColor: Colors.red,
                    fillColor: Color(0xFFBE0019),
                    hintText: "Date de vente  *",
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
                          hintText: "Veuillez d'ecrire le produits",
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
