class Commande {
  int id = 0;
  String refProduit;
  int quantite;
  String adresse;
  String contact;
  String client = "";
  DateTime dateCommande;
  DateTime dateLivraison;
  String status = "NON LIVREE";

  Commande(
      {required this.id,
      required this.refProduit,
      required this.quantite,
      required this.adresse,
      required this.contact,
      required this.client,
      required this.dateCommande,
      required this.dateLivraison,
      required this.status});
}
