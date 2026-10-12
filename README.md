# SoundWave 

Aplicación móvil desarrollada con Flutter y Dart como taller práctico de
desarrollo móvil. Simula una red social musical con tres secciones:
publicaciones, chats y un laboratorio de widgets interactivo.

## Funcionalidades

1. **Home (Feed Principal):**
   * **Banner Promocional:** Anuncio del *Festival SoundWave 2026*.
   * **Carrusel de Géneros:** Componente desplazable horizontalmente habilitado para interacción táctil y con mouse (`ScrollConfiguration`).
   * **Publicaciones (`PostCard`):** Publicaciones reutilizables de la comunidad con botón interactivo de «Me gusta».

2. **Chats:**
   * Lista visual de conversaciones con bandas, productores y miembros de la comunidad utilizando el widget personalizado `ChatTile`.

3. **Laboratorio de Widgets:**
   * **Control de Nivel de Volumen:** Componente interactivo que actualiza en tiempo real el valor de una variable numérica usando `setState()`, con controles de incremento/decremento y límites definidos (0% a 100%)..

## Estructura del proyecto

```
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart
│   ├── chats_screen.dart
│   └── laboratory_screen.dart
└── widgets/
    ├── post_card.dart
    ├── promotional_banner.dart
    ├── image_carousel.dart
    ├── chat_tile.dart
    └── numeric_counter.dart
```

##  Tecnologías Utilizadas

* **Lenguaje:** Dart
* **Framework:** Flutter
* **Componentes clave:** `Scaffold`, `AppBar`, `BottomNavigationBar`, `ListView`, `SingleChildScrollView`, `StatefulWidget`, `StatelessWidget`.


## Autor

Danna Sofia Cruz Gozalez 