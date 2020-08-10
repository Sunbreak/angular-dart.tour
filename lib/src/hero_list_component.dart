import 'package:angular/angular.dart';

import 'hero.dart';
import 'hero_component.dart';
import 'hero_service.dart';

@Component(
  selector: 'my-heroes',
  providers: [ClassProvider(HeroService)],
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],
  directives: [coreDirectives, HeroComponent],
)
class HeroListComponent implements OnInit {
  final HeroService _heroService;

  HeroListComponent(this._heroService);

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
