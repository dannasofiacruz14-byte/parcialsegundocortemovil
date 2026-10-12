import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PromotionalBanner(
          title: 'Festival SoundWave 2026',
          description: '¡Consigue tus entradas antes de que se agoten!',
          icon: IconData(0xe149, fontFamily: 'MaterialIcons'),
          backgroundColor: Color.fromARGB(255, 73, 4, 59), //  CAMBIA EL COLOR DEL BANNER
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: const Align(

            alignment: Alignment.center,

            child: Text(
            'Explorar Generos',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          )
  
        ),
        ImageCarousel(),
        SizedBox(height: 10),
        PostCard(
          userName: 'steffa',
          userAvatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpJSuatKRpcmmlFiB9h5dHl5oJF-O42dXXDHOTmvMl_4gOylAVCybfkHhB&s=10',
          imageUrl: 'https://www.mondosonoro.com/wp-content/uploads/2017/09/Control-Room.jpg',
          description: 'Grabando las guitarras para el nuevo álbum en el estudio. ',
        ),
        PostCard(
          userName: 'Carlos ',
          userAvatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGJc_UvaWvH1JyLB7miAQTTcQCLx_h-IcxVBQ4a_YEz7_8Z23cR_Ku3QgX&s=10',
          imageUrl: 'https://images.xceed.me/blog/wp-content/uploads/2023/08/21171721/thebassement-1024x576.jpg',
          description: 'Increíble la vibra del concierto de anoche en Bogotá.',
        ),
      ],
    );
  }
}