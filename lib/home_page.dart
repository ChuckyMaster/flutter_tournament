import 'package:flutter/material.dart';
import 'main_layout.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> articles = [
    {
      "title": "Lorcana - Nouveau Set",
      "description": "Découvrez les nouvelles cartes et stratégies du set Lorcana.",
      "image": "assets/images/lorcana.jpg"
    },
    {
      "title": "Magic - Tournoi Pro",
      "description": "Les meilleurs joueurs s'affrontent dans un tournoi épique.",
      "image": "assets/images/magic.jpg"
    },
    {
      "title": "Hearthstone - Mise à Jour",
      "description": "Une nouvelle extension avec des cartes inédites.",
      "image": "assets/images/hearthstone.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple[300]!, Colors.purple[900]!], // Dégradé violet
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView( // Ajout du Scroll ici
          child: Column(
            children: [
              // Image en bannière
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/banniere-disney-lorcana.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Texte de bienvenue
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Bienvenue dans le monde des Tournois de Cartes !',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 10),

              // Sous-titre
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Lorcana, Hearthstone, Magic... Découvrez les tournois en cours !",
                  style: TextStyle(fontSize: 16, color: Colors.grey[300]),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 30),

              // Liste des articles sous forme de Cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: articles.map((article) {
                    return Card(
                      elevation: 5,
                      margin: EdgeInsets.only(bottom: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image en haut de la carte
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                            child: Image.asset(
                              article["image"]!,
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Titre
                                Text(
                                  article["title"]!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple[900],
                                  ),
                                ),
                                SizedBox(height: 5),

                                // Description
                                Text(
                                  article["description"]!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),

                                SizedBox(height: 10),

                                // Bouton "Voir Plus"
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print("Voir plus sur ${article["title"]}");
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.purple[700],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text("Voir Plus", style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
