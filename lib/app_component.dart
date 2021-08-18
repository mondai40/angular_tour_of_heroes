
import 'package:angular/angular.dart';


import 'package:angular_app/src/hero_list_component.dart';
import 'package:angular_app/src/hero_service.dart';

@Component(
  selector: 'my-app',
  template: '''
    <h1>{{ title }}</h1>
    <my-heros></my-heros>
  ''',
  directives: [HeroListComponent],
  providers: [ClassProvider(HeroService)]
)
class AppComponent {
  final String title = 'Tour of Heroes';
}