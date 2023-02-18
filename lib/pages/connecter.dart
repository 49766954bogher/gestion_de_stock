import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_de_stock/bloc-cubit/cubit/authentication_cubit.dart';
import '../../bloc-cubit/cubit/authentication_state.dart';
import '../../widget/forms.dart';

class Connecter extends StatefulWidget {
  const Connecter({Key? key}) : super(key: key);

  @override
  State<Connecter> createState() => _ConnecterState();
}

class _ConnecterState extends State<Connecter> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool ispass = false;
  @override
  Widget build(BuildContext context) {
    //final cubit = context.read<AuthenticationCubit>;
    // AuthenticationBloc authenticationBloc =
    //     BlocProvider.of<AuthenticationBloc>(context);

    return SafeArea(
      child: Scaffold(
        key: _formKey,
        body: BlocConsumer<AuthenticationCubit, AuthenticationState>(
          listener: (context, state) {
            if (state is AuthenticationSuccessState) {
              Navigator.pushNamed(context, "homePage");
            }
          },
          builder: (context, state) {
            return Stack(children: [
              SingleChildScrollView(
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Padding(padding: EdgeInsets.all(20)),
                        const SizedBox(
                          height: 35,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: myTextFormField(
                            email,
                            false,
                            "Email",
                            TextInputType.text,
                            const Icon(Icons.person),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
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
                              child: const Text("connecter"),
                              onPressed: () {
                                Navigator.of(context).pushNamed("home");
                              }),

                          // child: FormHelper.submitButton("Connecter",
                          //     btnColor: Colors.blue, () async {
                          //   // LoginRequestModel model = LoginRequestModel(
                          //   // email: email.text, password: password.text);
                          //   //await BlocProvider.of<AuthenticationCubit>(context)
                          //   //  .authUser(model);
                          //   // print("connexion valid");
                          //   Navigator.of(context).pushNamed("home");
                          // }),
                          // UserRepository.login(model).then((response) => {
                          //       if (response)
                          //         {
                          //           Navigator.pushNamedAndRemoveUntil(
                          //               context,
                          //               "homePage",
                          //               (route) => false)
                          //         }
                          //       else
                          //         {
                          //           FormHelper.showSimpleAlertDialog(
                          //               context,
                          //               "$ApiConfig.appName",
                          //               "invalid email / password",
                          //               "Ok", () {
                          //             Navigator.of(context).pop();
                          //           })
                          //         }
                          //     });

                          // child: const Text(
                          //   "Se connecter",
                          //   style: TextStyle(
                          //       fontSize: 15, fontWeight: FontWeight.bold),
                          // ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Row(
                            children: [
                              const Text(
                                "Pas de compte? ",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacementNamed(
                                    "inscrire",
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
            ]);
          },
        ),
      ),
    );
  }

  bool formValideAndSave() {
    final formKey = GlobalKey<FormState>();

    var form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
