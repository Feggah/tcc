import 'package:auto_route/annotations.dart';
import 'package:exposure/presentation/view/home.dart';
import 'package:exposure/presentation/view/pages/infected_page.dart';
import 'package:exposure/presentation/view/pages/locations_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: Home,
      initial: true,
      children: [
        AutoRoute(page: LocationsPage),
        AutoRoute(page: InfectedPage),
      ],
    )
  ],
)
class $AppRouter {}
