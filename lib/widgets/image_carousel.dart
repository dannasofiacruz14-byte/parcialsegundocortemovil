import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ScrollConfiguration(
        
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
            PointerDeviceKind.trackpad,
          },
        ),
        child: ListView(
          scrollDirection: Axis.horizontal, // Desplazamiento horizontal
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: const [
            GenreCard(
              imageUrl: 'https://images.unsplash.com/photo-1498038432885-c6f3f1b912ee?w=300&q=80',
              label: 'Rock',
            ),
            GenreCard(
              imageUrl: 'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?w=300&q=80',
              label: 'Indie',
            ),
            GenreCard(
              imageUrl: 'https://images.unsplash.com/photo-1508700115892-45ecd05ae2ad?w=300&q=80',
              label: 'Electrónica',
            ),
            GenreCard(
              imageUrl: 'https://images.unsplash.com/photo-1511192336575-5a79af67a629?w=300&q=80',
              label: 'Jazz',
            ),
            GenreCard(
              imageUrl: 'https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?w=300&q=80',
              label: 'Pop & Urban',
            ),
          ],
        ),
      ),
    );
  }
}

class GenreCard extends StatelessWidget {
  final String imageUrl;
  final String label;

  const GenreCard({
    super.key,
    required this.imageUrl,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 12),
      clipBehavior: Clip.antiAlias, //
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        color: Colors.black87,
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}