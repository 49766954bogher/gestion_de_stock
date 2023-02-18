import 'package:flutter/material.dart';

Widget ModifChamps(String name, String placeholder, bool estPassword) {
  bool showPassword = true;
  return Padding(
    padding: const EdgeInsets.only(bottom: 35),
    child: TextField(
      obscureText: estPassword ? showPassword : false,
      decoration: InputDecoration(
        suffixIcon: estPassword
            ? IconButton(
                onPressed: () {
                  // ignore: unused_element
                  void setState() {
                    showPassword = !showPassword;
                  }
                },
                icon: const Icon(
                  Icons.remove_red_eye,
                ),
              )
            : null,
        labelText: name,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.only(bottom: 4),
        hintText: placeholder,
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        labelStyle: const TextStyle(
            color: Color(0xFF9E9E9E),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}
