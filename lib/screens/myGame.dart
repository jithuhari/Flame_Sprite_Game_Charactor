import 'package:flame/components.dart';
//import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/cupertino.dart';

class MyGame extends BaseGame with DoubleTapDetector {
  SpriteComponent superman = SpriteComponent();
  bool running = true;
  String direction = 'left';
  SpriteAnimationComponent runAnimation = SpriteAnimationComponent();
  double speed = 2.0;


  @override
  Future<void> onLoad() async {

    // print('hello');
    // superman
    //   ..sprite = await loadSprite('superman.png')
    //   ..size = Vector2(100.0, 100.0)
    //   ..x = 150
    //   ..y = 50;
    //add(superman);

    var spriteSheet = await images.load('SpriteSheetRun1.png');
    final spriteSize = Vector2(152, 142);
    SpriteAnimationData spriteData = SpriteAnimationData.sequenced(
      amount:3, stepTime: 0.1, textureSize: Vector2(152, 142));
    runAnimation = 
    SpriteAnimationComponent.fromFrameData(spriteSheet, spriteData)
    ..x = 150
    ..y = 30
    ..size = spriteSize;
    add(runAnimation);
  }

  @override
  update(double dt) {
    super.update(dt);

    switch (direction) {
      case 'left':
        runAnimation.x += speed;
        break;
      case 'rigt':
        runAnimation.x -= speed;
        break;
    }

    if (runAnimation.x > 300) {
      direction = 'rigt';
    } else if (runAnimation.x < 20) {
      direction = 'left';
    }
  }

  @override
  void onDoubleTap() {
    running ? pauseEngine() : resumeEngine();
    running = !running;
  }
}
