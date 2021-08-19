import 'package:angular_app/src/mock_heros.dart';
import 'dart:async';

import 'hero.dart';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeros;
  Future<List<Hero>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), getAll);
  }
  String title = 'hello';
}
