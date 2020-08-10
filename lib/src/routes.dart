import 'package:angular_router/angular_router.dart';

import 'dashboard_component.template.dart' as dashboard_template;
import 'hero_list_component.template.dart' as hero_list_template;
import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );

  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    dashboard,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.dashboard.toUrl(),
    ),
    heroes,
  ];
}
