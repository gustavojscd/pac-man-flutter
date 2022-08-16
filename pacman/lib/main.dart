import 'package:bonfire/bonfire.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Pac Man',
      theme: ThemeData(primarySwatch: Colors.amber,
      ),
      home: const Game(),
    );
  }
}

class Game extends StatelessWidget{
  const Game({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(directional: JoystickDirectional(),
      ),
      map: TiledWorldMap('teste.json', forceTileSize: const Size(32,32),
      ),
    );
  }
}