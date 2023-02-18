import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_de_stock/bloc-cubit/cubit/authentication_cubit.dart';
import 'package:gestion_de_stock/pages/accueil.dart';
import 'package:gestion_de_stock/pages/connecter.dart';
import 'package:gestion_de_stock/pages/home.dart';
import 'package:gestion_de_stock/pages/inscription.dart';
import 'package:gestion_de_stock/pages/profile.dart';
import 'package:gestion_de_stock/pages/stock.dart';
import 'package:gestion_de_stock/pages/category.dart';
import 'package:gestion_de_stock/pages/client.dart';
import 'package:gestion_de_stock/pages/fournisseur.dart';
import 'package:gestion_de_stock/pages/produits.dart';
import 'package:gestion_de_stock/pages/ventes.dart';
import 'Repository/user_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your applicatione.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationCubit(UserRepository()),
      child: MaterialApp(
        routes: {
          "home": (context) => const HomePage(),
          "deconnecter": (context) => const Connecter(),
          "magasin": (context) => const StockPage(),
          "client": (context) => const ClientPage(),
          "stock": (context) => const ProductPage(),
          "inscrire": (context) => const Inscrire(),
          "connecter": (context) => const Connecter(),
          "category": (context) => const Categoty(),
          "fournisseur": (context) => const FournisseurPage(),
          "profile": (context) => const ProfilePage(),
          "vente": (context) => const VentePage(),
        },
        title: 'e-Stock',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          iconTheme: const IconThemeData(color: Colors.blue),
          primarySwatch: Colors.blue,
          drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
          buttonTheme: const ButtonThemeData(buttonColor: Colors.black),
          // elevatedButtonTheme: const ElevatedButtonThemeData(
          //   style: ButtonStyle(backgroundColor: Color(0xFFBE0019)),
          // ),
        ),
        home: const Accueil(),
      ),
    );
  }
}
