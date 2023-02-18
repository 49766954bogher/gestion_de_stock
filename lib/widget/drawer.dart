import 'package:flutter/material.dart';
import 'package:gestion_de_stock/widget/conatiner.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      semanticLabel: 'Accueil',
      elevation: 6,
      child: ListView(padding: EdgeInsets.zero, children: [
        const OurConatainer(),
        ListTile(
          title: const Text(
            " Acceuil",
            style: TextStyle(
              fontFamily: "ProductSans",
            ),
          ),
          leading: const Icon(Icons.store_outlined, color: Colors.red),
          onTap: () {
            Navigator.of(context).pushNamed("home");
          },
        ),
        ListTile(
          title: const Text(
            "Mon compte",
            style: TextStyle(
              fontFamily: "ProductSans",
            ),
          ),
          leading: const Icon(Icons.person, color: Colors.red),
          onTap: () {},
        ),
        ListTile(
            title: const Text(
              "Fournisseurs",
              style: TextStyle(
                fontFamily: "ProductSans",
              ),
            ),
            leading: const Icon(Icons.contact_phone_sharp, color: Colors.red),
            onTap: () {
              Navigator.of(context).pushNamed("fournisseur");
            }),
        ListTile(
          title: const Text(
            "Category",
            style: TextStyle(
              fontFamily: "ProductSans",
            ),
          ),
          leading: const Icon(Icons.category, color: Colors.red),
          onTap: () {
            Navigator.of(context).pushNamed("category");
          },
        ),
        ListTile(
          title: const Text(
            "Magasin",
            style: TextStyle(
              fontFamily: "ProductSans",
            ),
          ),
          leading: const Icon(Icons.check_box_outline_blank, color: Colors.red),
          onTap: () {
            Navigator.of(context).pushNamed("magasin");
          },
        ),
        ListTile(
          title: const Text(
            "Client",
            style: TextStyle(
              fontFamily: "ProductSans",
            ),
          ),
          leading: const Icon(Icons.supervised_user_circle, color: Colors.red),
          onTap: () {
            Navigator.of(context).pushNamed("client");
          },
        ),
        ListTile(
          title: const Text(
            "Caisse",
            style: TextStyle(
              fontFamily: "ProductSans",
            ),
          ),
          leading: const Icon(Icons.add_shopping_cart, color: Colors.red),
          onTap: () {
            Navigator.of(context).pushNamed("vente");
          },
        ),
        ListTile(
          title: const Text(
            "Stock",
            style: TextStyle(
              fontFamily: "ProductSans",
            ),
          ),
          leading: const Icon(Icons.inventory, color: Colors.red),
          onTap: () {
            Navigator.of(context).pushNamed("stock");
          },
        ),
        ListTile(
            title: const Text(
              "Deconnexion",
              style: TextStyle(
                fontFamily: "ProductSans",
              ),
            ),
            leading: const Icon(Icons.logout, color: Colors.red),
            onTap: () {
              Navigator.of(context).pushNamed("connecter");
            })
      ]),
    );
  }
}
