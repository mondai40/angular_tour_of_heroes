import 'package:angular_app/src/mock_heros.dart';
import 'dart:async';

import 'hero.dart';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeros;
}