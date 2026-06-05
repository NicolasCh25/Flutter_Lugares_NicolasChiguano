import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // <--- Importación necesaria añadida

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(image: 'images/lake.jpeg'),
              TitleSection(
                name: 'Oeschinen Lake Campground',
                location: 'Kandersteg, Switzerland',
              ),
              ButtonSection(
                mapsUrl: 'https://maps.google.com/?q=Oeschinen+Lake',
              ),
              TextSection(
                description:
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
              ),
              ImageSection(image: 'images/torre.jpg'),
              TitleSection(
                name: 'Eiffel Tower',
                location: 'Paris, France',
              ),
              ButtonSection(
                mapsUrl: 'https://maps.google.com/?q=Eiffel+Tower',
              ),
              TextSection(
                description:
                    'The Eiffel Tower is one of the most recognizable landmarks in the world. Built in 1889, it attracts millions of visitors each year who enjoy panoramic views of Paris from its observation decks.',
              ),
              ImageSection(image: 'images/muralla.jpg'),
              TitleSection(
                name: 'Great Wall of China',
                location: 'Beijing, China',
              ),
              ButtonSection(
                mapsUrl: 'https://maps.google.com/?q=Great+Wall+of+China',
              ),
              TextSection(
                description:
                    'The Great Wall of China is one of the greatest engineering achievements in history. Stretching thousands of kilometers, it was built to protect ancient Chinese states and remains a symbol of Chinese culture.',
              ),
              ImageSection(image: 'images/machu.jpg'),
              TitleSection(
                name: 'Machu Picchu',
                location: 'Cusco, Peru',
              ),
              ButtonSection(
                mapsUrl: 'https://maps.google.com/?q=Machu+Picchu',
              ),
              TextSection(
                description:
                    'Machu Picchu is an ancient Inca citadel located high in the Andes Mountains. It is one of the most important archaeological sites in the world and a UNESCO World Heritage Site.',
              ),
              ImageSection(image: 'images/estatua.jpg'),
              TitleSection(
                name: 'Statue of Liberty',
                location: 'New York, USA',
              ),
              ButtonSection(
                mapsUrl: 'https://maps.google.com/?q=Statue+of+Liberty',
              ),
              TextSection(
                description:
                    'The Statue of Liberty is a symbol of freedom and democracy. Gifted by France to the United States, it welcomes visitors arriving in New York Harbor.',
              ),
              ImageSection(image: 'images/coliseo.jpg'),
              TitleSection(
                name: 'Colosseum',
                location: 'Rome, Italy',
              ),
              ButtonSection(
                mapsUrl: 'https://maps.google.com/?q=Colosseum',
              ),
              TextSection(
                description:
                    'The Colosseum is an ancient Roman amphitheater that once hosted gladiator contests and public spectacles. It remains one of the most famous monuments of the Roman Empire.',
              ),
              ImageSection(image: 'images/cristo.jpg'),
              TitleSection(
                name: 'Christ the Redeemer',
                location: 'Rio de Janeiro, Brazil',
              ),
              ButtonSection(
                mapsUrl: 'https://maps.google.com/?q=Christ+the+Redeemer',
              ),
              TextSection(
                description:
                    'Christ the Redeemer is a massive statue overlooking Rio de Janeiro. Standing atop Corcovado Mountain, it is one of the New Seven Wonders of the World.',
              ),
              ImageSection(image: 'images/opera.jpg'),
              TitleSection(
                name: 'Sydney Opera House',
                location: 'Sydney, Australia',
              ),
              ButtonSection(
                mapsUrl: 'https://maps.google.com/?q=Sydney+Opera+House',
              ),
              TextSection(
                description:
                    'The Sydney Opera House is an architectural masterpiece and one of Australia’s most famous landmarks. Its unique sail-like design makes it instantly recognizable.',
              ),
              ImageSection(image: 'images/piramides.jpg'),
              TitleSection(
                name: 'Pyramids of Giza',
                location: 'Giza, Egypt',
              ),
              ButtonSection(
                mapsUrl: 'https://maps.google.com/?q=Pyramids+of+Giza',
              ),
              TextSection(
                description:
                    'The Pyramids of Giza are among the oldest and most impressive structures ever built. They were constructed as tombs for Egyptian pharaohs over 4,500 years ago.',
              ),
              ImageSection(image: 'images/mahal.jpg'),
              TitleSection(
                name: 'Taj Mahal',
                location: 'Agra, India',
              ),
              ButtonSection(
                mapsUrl: 'https://maps.google.com/?q=Taj+Mahal',
              ),
              TextSection(
                description:
                    'The Taj Mahal is a magnificent white marble mausoleum built by Emperor Shah Jahan. It is considered one of the finest examples of Mughal architecture.',
              ),
              ImageSection(image: 'images/monte.jpg'),
              TitleSection(
                name: 'Mount Fuji',
                location: 'Honshu, Japan',
              ),
              ButtonSection(
                mapsUrl: 'https://maps.google.com/?q=Mount+Fuji',
              ),
              TextSection(
                description:
                    'Mount Fuji is Japan’s highest mountain and one of its most iconic natural landmarks. Its symmetrical volcanic cone attracts hikers, photographers, and visitors from around the world.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
    required this.mapsUrl,
  });

  final String mapsUrl;

  Future<void> _openMap() async {
    final Uri url = Uri.parse(mapsUrl);
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('No se pudo abrir Google Maps');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonWithText(
          color: color,
          icon: Icons.call,
          label: 'CALL',
        ),
        GestureDetector(
          onTap: _openMap,
          child: ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'MAP',
          ),
        ),
        ButtonWithText(
          color: color,
          icon: Icons.share,
          label: 'SHARE',
        ),
      ],
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        // Fallback por si la imagen local no existe aún en tus assets
        return Container(
          width: 600,
          height: 240,
          color: Colors.grey[300],
          child: const Icon(Icons.image, size: 50, color: Colors.grey),
        );
      },
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount--;
        _isFavorited = false;
      } else {
        _favoriteCount++;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: _isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Text('$_favoriteCount'),
        ),
      ],
    );
  }
}