
import 'package:angular/angular.dart';


import 'package:angular_app/src/hero_list_component.dart';
import 'package:angular_app/src/hero_service.dart';

@Component(
  selector: 'my-app',
  template: '''
    test
  ''',
  directives: [HeroListComponent],
  providers: [ClassProvider(HeroService)]
)
class AppComponent {
  final String title = 'Tour of Artists';
}
class Animal {}

class Robot {}

class Human {}

