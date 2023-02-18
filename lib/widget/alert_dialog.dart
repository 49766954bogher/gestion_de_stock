import 'package:flutter/material.dart';

SimpleDialog ourDialogue(BuildContext context) {
  return SimpleDialog(
    title: const Text(
      "Produit N°",
      style: TextStyle(
        fontFamily: "ProductSans",
      ),
    ),
    children: <Widget>[
      ListTile(
        leading: const Icon(
          Icons.title,
          color: Color(0xFFBE0019),
        ),
        title: const Text(
          "0",
        ),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(
          Icons.format_list_numbered,
          color: Color(0xFFBE0019),
        ),
        title: const Text(
          "dispo: ",
          style: TextStyle(
            fontFamily: "ProductSans",
          ),
        ),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(
          Icons.add_shopping_cart,
          color: Color(0xFFBE0019),
        ),
        title: const Text(
          "en commande:",
          style: TextStyle(
            fontFamily: "ProductSans",
          ),
        ),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(
          Icons.attach_money,
          color: Color(0xFFBE0019),
        ),
        title: const Text(
          "Achat: ",
          style: TextStyle(
            fontFamily: "ProductSans",
          ),
        ),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(
          Icons.attach_money,
          color: Color(0xFFBE0019),
        ),
        title: const Text(
          "Vente: ",
          style: TextStyle(
            fontFamily: "ProductSans",
          ),
        ),
        onTap: () {},
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            "Fermer",
            style: TextStyle(
              fontFamily: "ProductSans",
            ),
          ))
    ],
  );
}
