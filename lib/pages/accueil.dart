// import
import 'package:flutter/material.dart';
import 'connecter.dart';
import 'inscription.dart';

class Accueil extends StatefulWidget {
  // String brms = 'Ibrahima diallo';
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController controller =
        TabController(length: 2, initialIndex: 1, vsync: this);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "e-Stock",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              controller: controller,
              unselectedLabelColor: Colors.white,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              indicatorWeight: 3,
              tabs: const [
                Tab(icon: Icon(Icons.login), text: "Se connecter"),
                Tab(
                  icon: Icon(Icons.person_add),
                  text: "S'inscrire",
                )
              ],
            ),
          ),
          body: TabBarView(
            controller: controller,
            children: const [Connecter(), Inscrire()],
          )),
    );
  }
}
