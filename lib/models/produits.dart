class Produit {
  int id = 0;
  String nomProduit = '';
  String reference = '';
  int dispo = 0;
  int prixAchat = 0;
  int prixVente = 0;

  Produit({
    required this.id,
    required this.nomProduit,
    required this.reference,
    required this.dispo,
    required this.prixAchat,
  });
}
