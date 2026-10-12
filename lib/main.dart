import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/chats_screen.dart';
import 'screens/laboratory_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taller Práctico Flutter',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF66026B),
  ),
  useMaterial3: true,
),

      home: const MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    ChatsScreen(),
    LaboratoryScreen(),
  ];

  final List<String> _titles = const [
    'SoundWave — Feed',
  'Mensajes de Banda',
  'Ecualizador y Volumen',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
 
  leading: IconButton(
    icon: const Icon(Icons.graphic_eq),
    onPressed: () {},
  ),
  title: Text(_titles[_currentIndex]),
  backgroundColor: const Color(0xFF66026B),
  foregroundColor: Colors.white,
  // Opcional: Iconos en el lado DERECHO (actions)
  actions: [
    IconButton(
      icon: const Icon(Icons.notifications_none),
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {},
    ),
  ],
),
      
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: const Color(0xFF66026B),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.science),
            label: 'Laboratorio',
          ),
        ],
      ),
    );
  }
}