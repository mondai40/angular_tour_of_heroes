import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives, formDirectives]
)
class AppComponent {
  final String title = 'Tour of Heroes';

  Hero hero = Hero(1, 'Windstorm');
}
