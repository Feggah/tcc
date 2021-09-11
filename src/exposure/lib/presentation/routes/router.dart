import 'package:auto_route/annotations.dart';
import 'package:exposure/presentation/view/home.dart';
import 'package:exposure/presentation/view/pages/details_page.dart';
import 'package:exposure/presentation/view/pages/infected_page.dart';
import 'package:exposure/presentation/view/pages/initial_page.dart';
import 'package:exposure/presentation/view/pages/locations_page.dart';
import 'package:exposure/presentation/view/pages/search_page.dart';
import 'package:exposure/presentation/view/pages/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: SplashPage,
      initial: true,
    ),
    CustomRoute(page: InitialPage),
    CustomRoute(
      page: Home,
      children: [
        CustomRoute(page: LocationsPage),
        CustomRoute(page: InfectedPage),
      ],
    ),
    CustomRoute(page: SearchPage),
    CustomRoute(page: DetailsPage),
  ],
)
class $AppRouter {}
