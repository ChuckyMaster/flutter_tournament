import 'package:flutter/material.dart';
import 'article_details_page.dart';
import 'main_layout.dart';

class ArticlesPage extends StatelessWidget {
  // Liste de tournois de jeux de cartes
  final List<Map<String, String>> tournois = [
    {
      "title": "Tournoi Hearthstone - Légendes",
      "description": "Un tournoi épique entre les meilleurs joueurs d'Hearthstone.",
      "image": "assets/images/hearthstone.jpg"
    },
    {
      "title": "Magic: The Gathering Pro Tour",
      "description": "Venez voir les meilleurs decks de Magic s'affronter.",
      "image": "assets/images/magic.jpg"
    },
    {
      "title": "Disney Lorcana Championship",
      "description": "Affrontez les plus grands stratèges de Lorcana !",
      "image": "assets/images/lorcana.jpg"
    },
        {
      "title": "Tournoi Hearthstone - Légendes",
      "description": "Un tournoi épique entre les meilleurs joueurs d'Hearthstone.",
      "image": "assets/images/hearthstone.jpg"
    },
    {
      "title": "Magic: The Gathering Pro Tour",
      "description": "Venez voir les meilleurs decks de Magic s'affronter.",
      "image": "assets/images/magic.jpg"
    },
    {
      "title": "Disney Lorcana Championship",
      "description": "Affrontez les plus grands stratèges de Lorcana !",
      "image": "assets/images/lorcana.jpg"
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
        child: ListView.builder(
          itemCount: tournois.length,
          itemBuilder: (context, index) {
            final tournoi = tournois[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticleDetailsPage(article: tournoi),
                  ),
                );
              },
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: Row(
                  children: [
                    // Image du tournoi
                    ClipRRect(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(15)),
                      child: Image.asset(
                        tournoi["image"]!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    // Texte du tournoi
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tournoi["title"]!,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              tournoi["description"]!,
                              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
