import 'package:flutter/material.dart';

import '../../widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              size: 30,
            ))
      ], centerTitle: true, title: const Text("Accueil")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 8.0),
              const Text(
                "Bienvenue au eStock ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              const Text(
                textAlign: TextAlign.center,
                "Gerez le stock de votre magasin devient beaucoup plus fun.",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 15),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("admin");
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0)),
                  height: 50,
                  width: 300,
                  child: const Text(
                    "Magasins",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
