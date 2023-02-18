import 'package:flutter/material.dart';

class VentePage extends StatelessWidget {
  const VentePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ajouter un client"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              // const AboutImage(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Client",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Column(children: [
                Container(
                  height: 30,
                  width: 100,
                  decoration: const BoxDecoration(),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text("Veuillez selectionner un client")),
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.5,
                  endIndent: 10,
                  indent: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Panier",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 40,
                    )
                  ],
                )
              ]),

              const SizedBox(
                height: 10,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
