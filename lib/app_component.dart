import 'package:angular/angular.dart';
import 'package:angular_app/src/hero_component.dart';
import 'package:angular_app/src/hero_service.dart';
// import 'package:angular_app/src/mock_heros.dart';
import 'package:angular_forms/angular_forms.dart';

import 'src/hero.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, formDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)]
)
class AppComponent implements OnInit{
  final String title = 'Tour of Heroes';
  Hero selectedHero;
  final HeroService _heroService;

  AppComponent(this._heroService);

  List<Hero> heros;
  Future<void> _getHeros() async {
    // _heroService.getAll()
    //   .then((heros) => this.heros = heros);
    heros = await _heroService.getAll();
  }

  void onSelect(Hero hero) => selectedHero = hero;

  @override
  void ngOnInit() => _getHeros();
}