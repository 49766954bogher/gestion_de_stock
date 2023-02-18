import 'package:flutter/material.dart';

class OurConatainer extends StatelessWidget {
  const OurConatainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.zero,
          topRight: Radius.zero,
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      height: 150,
      width: double.infinity,
      child: const Text(
        "e-Stock",
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
