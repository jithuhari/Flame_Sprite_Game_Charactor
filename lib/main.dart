import 'package:flame/components.dart';
import 'package:flame_flutter_sample_project/screens/myGame.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:ordered_set/comparing.dart';

void main(){
  print('object');
  runApp(GameWidget(game: MyGame()));
}

// class MyGame extends BaseGame{

//   SpriteComponent superman = SpriteComponent();

//   @override
//   Future<void> onLoad() async{
//     print('hello');
//     superman ..sprite = await loadSprite('superman.png')
//     ..size = Vector2(100.0,100.0);
//     add(superman);
//   }

// }