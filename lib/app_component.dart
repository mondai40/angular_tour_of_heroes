import 'package:angular/angular.dart';
import 'package:angular_app/src/hero_component.dart';
import 'package:angular_app/src/mock_heros.dart';
import 'package:angular_forms/angular_forms.dart';

import 'src/hero.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, formDirectives, HeroComponent]
)
class AppComponent {
  final String title = 'Tour of Heroes';
  Hero selectedHero;

  List<Hero> heros = mockHeros;

  void onSelect(Hero hero) => selectedHero = hero;
}