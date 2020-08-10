import 'package:angular/angular.dart';

import 'hero_component.dart';
import 'src/hero.dart';
import 'src/hero_service.dart';

@Component(
  selector: 'my-app',
  providers: [ClassProvider(HeroService)],
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, HeroComponent],
)
class AppComponent implements OnInit {
  final HeroService _heroService;

  AppComponent(this._heroService);

  final title = 'Tour of Heroes';

  List<Hero> heroes;

  Future<void> _getHeroes() async {
    heroes = await _heroService.getAllSlowly();
  }

  @override
  void ngOnInit() => _getHeroes();

  Hero selected;

  void onSelect(Hero hero) => selected = hero;
}
