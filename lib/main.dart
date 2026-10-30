import 'package:flutter/material.dart';

void main() {
  runApp(const ExploreMundoApp());
}

class ExploreMundoApp extends StatelessWidget {
  const ExploreMundoApp({super.key});
  Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),

        const SizedBox(height: 8),

        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Chapada Diamantina",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  "Bahia, Brasil",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),

          const SizedBox(width: 8),

          const Text("4.9", style: TextStyle(fontSize: 16)),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.blue, Icons.call, "LIGAR"),
        _buildButtonColumn(Colors.blue, Icons.near_me, "ROTA"),
        _buildButtonColumn(Colors.blue, Icons.share, "COMPARTILHAR"),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        "Localizada no coração da Bahia, a Chapada Diamantina é conhecida por suas paisagens naturais, cachoeiras, montanhas e trilhas. É um destino para quem deseja explorar a natureza e conhecer cenários marcantes do Brasil.",
        softWrap: true,
        style: TextStyle(fontSize: 16, height: 1.5),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Explore Mundo - Agência de Viagens",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/chapada.jpg',
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
