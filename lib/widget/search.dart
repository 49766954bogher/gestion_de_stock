import 'package:flutter/material.dart';

Card mySaerchCard(BuildContext context) {
  return Card(
    elevation: 10,
    child: Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.05,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xFFBE0019), hintText: "Rechercher ici..."),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (() {}),
          ),
        ],
      ),
    ),
  );
}
