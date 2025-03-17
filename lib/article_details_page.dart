import 'package:flutter/material.dart';

class ArticleDetailsPage extends StatelessWidget {
  final Map<String, String> article;

  const ArticleDetailsPage({required this.article, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article["title"]!, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple[800],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          Image.asset(
            article["image"]!,
            height: 250,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              article["title"]!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple[900]),
            ),
          ),
          SizedBox(height: 10),
          // Description complète
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              article["description"]!,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}
