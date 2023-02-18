import 'package:flutter/material.dart';

TextFormField myTextFormField(
  TextEditingController controller,
  bool secret,
  String hint,
  TextInputType type,
  Icon icon,
) {
  return TextFormField(
    controller: controller,
    keyboardType: type,
    obscureText: secret,
    decoration: InputDecoration(
      focusColor: Colors.red,
      hintText: hint,
      icon: icon,
    ),
  );
}

// Form form() {
//   final GlobalKey<FormState> key = GlobalKey<FormState>();

//   return Form(
//       key: key,
//       child: TextFormField(
//         validator: (value) {
//           if(value.isNotEmpty){

//           }
//         },
//       ));
// }

bool formValideAndSave(String value) {
  final formKey = GlobalKey<FormState>();

  var form = formKey.currentState;
  if (form!.validate()) {
    form.save();
    return true;
  } else {
    return false;
  }
}
