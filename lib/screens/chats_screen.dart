import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatTile(
          name: 'Banda Rock tiana',
          lastMessage: '¿A qué hora es el ensayo hoy en el estudio?',
          time: '10:30 AM',
          avatarUrl: 'https://static.wikia.nocookie.net/characters/images/e/e2/Tiana_The_Princess_and_the_Frog.jpg/revision/latest?cb=20190716190023',
          hasUnread: true,
        ),
        Divider(height: 1),
        ChatTile(
          name: 'Productora jasmin',
          lastMessage: 'Te envié la maqueta en MP3 con la mezcla final.',
          time: '09:15 AM',
          avatarUrl: 'https://hips.hearstapps.com/hmg-prod/images/jasmine-disney-1543332871.jpg?crop=0.563xw:1.00xh;0.111xw,0&resize=1200:*',
          hasUnread: true,
        ),
        Divider(height: 1),
        ChatTile(
          name: 'Soporte SoundWave Blanca',
          lastMessage: 'Tu suscripción Premium ha sido renovada.',
          time: 'Ayer',
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5umFsQiVvUiHLtfYgQ-wcpwIYL5J2fhZRVdG_BVWBSGuvgvy7wvXCNlaT&s=10',
          hasUnread: false,
        ),
        Divider(height: 1),
        ChatTile(
          name: 'Rapuncel Baterista',
          lastMessage: 'Ya compré los platillos nuevos para el show.',
          time: 'Ayer',
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtDSQiWmQ5MO4W4H6eUceFeXxW0dY88WDAhAPWTvB01Wos0cVqtTsf5Zpr&s=10',
          hasUnread: false,
        ),
        Divider(height: 1),
        ChatTile(
          name: 'Guitarrista Aurora',
          lastMessage: '¿Alguien sabe qué pedal usa ese guitarrista?',
          time: 'Lunes',
          avatarUrl: 'https://static.wikia.nocookie.net/doblaje/images/e/e3/Princesa_aurora-rosa_lbd_1959.png/revision/latest?cb=20141010155116&path-prefix=es',
          hasUnread: false,
        ),
      ],
    );
  }
}