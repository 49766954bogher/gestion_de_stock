import 'package:flutter/material.dart';
import 'package:gestion_de_stock/widget/about_images.dart';

class StockPage extends StatefulWidget {
  const StockPage({super.key});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nouveau stock",
          style: TextStyle(
            fontFamily: "ProductSans",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const AboutImage(),
            const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: Icon(Icons.store),
                iconColor: Colors.red,
                fillColor: Color(0xFFBE0019),
                hintText: "Nom du magasin *",
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xFFBE0019),
                  hintText: "E-email adresse * ",
                  icon: Icon(Icons.email),
                  iconColor: Colors.red),
            ),
            const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: Icon(Icons.web),
                iconColor: Colors.red,
                fillColor: Color(0xFFBE0019),
                hintText: "Site internet ",
              ),
            ),
            const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                iconColor: Colors.red,
                fillColor: Color(0xFFBE0019),
                hintText: "Numero de telephone *",
              ),
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                iconColor: Colors.red,
                fillColor: Color(0xFFBE0019),
                hintText: "Adesse e-mail *",
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 8),
              //alignment: Alignment.center,
              height: 100,
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
                      hintText: "Description *",
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
    );
  }
}
