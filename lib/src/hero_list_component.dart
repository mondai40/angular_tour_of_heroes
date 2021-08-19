import 'package:angular/angular.dart';
import 'package:angular_app/src/hero_component.dart';
import 'package:angular_app/src/hero_service.dart';
// import 'package:angular_app/src/mock_heros.dart';
import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';

@Component(
  selector: 'my-heros',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],
  directives: [coreDirectives, formDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)]
)
class HeroListComponent implements OnInit{
  Hero selectedHero;
  final HeroService _heroService;

  HeroListComponent(this._heroService);

  List<Hero> heros;
  Future<void> _getHeros() async {
    // _heroService.getAll()
    //   .then((heros) => this.heros = heros);
    heros = await _heroService.getAllSlowly();
  }

  void onSelect(Hero hero) => selectedHero = hero;

  @override
  void ngOnInit() => _getHeros();
}

class TestComponent {}

// comment