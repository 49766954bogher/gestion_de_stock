import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_de_stock/models/user_auth/user_register_request.dart';

import '../../bloc-cubit/cubit/authentication_cubit.dart';
import '../../widget/forms.dart';

class Inscrire extends StatefulWidget {
  const Inscrire({Key? key}) : super(key: key);

  @override
  State<Inscrire> createState() => _InscrireState();
}

class _InscrireState extends State<Inscrire> {
  TextEditingController nom = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController prenom = TextEditingController();
  TextEditingController telephone = TextEditingController();
  TextEditingController password = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        key: formKey,
        body: Stack(children: [
          // Image.asset(
          //   "img/vote1.jpg",
          //   height: double.infinity,
          //   width: double.infinity,
          //   fit: BoxFit.cover,
          //   repeat: ImageRepeat.noRepeat,
          // ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Consumer<Accueil>(builder: ((context, value, child) => Text(value.brms))),

                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      child: myTextFormField(
                        nom,
                        false,
                        "Nom",
                        TextInputType.text,
                        const Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: myTextFormField(
                        prenom,
                        false,
                        "Prenom",
                        TextInputType.text,
                        const Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: myTextFormField(
                        telephone,
                        false,
                        "Telephone",
                        TextInputType.number,
                        const Icon(Icons.call),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: myTextFormField(
                        email,
                        false,
                        "Email",
                        TextInputType.emailAddress,
                        const Icon(Icons.email),
                      ),
                    ),
                    Container(
                      child: myTextFormField(
                        password,
                        false,
                        "Mot de passe",
                        TextInputType.text,
                        const Icon(Icons.lock),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 70,
                      width: double.infinity,
                      padding: const EdgeInsets.all(8),
                      child: ElevatedButton(
                          child: const Text("s'inscrire"),
                          onPressed: () {
                            Navigator.of(context).pushNamed("home");
                          }),
                      // child: FormHelper.submitButton("S'inscrire",
                      //     btnColor: Colors.blue, () {
                      //   // if (formValideAndSave()) {
                      //   RegisterRequestModel model = RegisterRequestModel(
                      //     firstname: nom.text,
                      //     lastname: prenom.text,
                      //     telephone: telephone.text,
                      //     email: email.text,
                      //     password: password.text,
                      //   );
                      //   BlocProvider.of<AuthenticationCubit>(context)
                      //       .registerUser(model);
                      //   print("inscription valid");

                      // }),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          const Text(
                            "Avez-vous deja une compte? ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacementNamed(
                                "connecter",
                              );
                            },
                            child: const Text(
                              "cliquez ici",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ]),
      ),
    );
  }

  bool formValideAndSave() {
    var form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
