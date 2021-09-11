// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../view/home.dart' as _i5;
import '../view/pages/details_page.dart' as _i7;
import '../view/pages/infected_page.dart' as _i9;
import '../view/pages/initial_page.dart' as _i4;
import '../view/pages/locations_page.dart' as _i8;
import '../view/pages/search_page.dart' as _i6;
import '../view/pages/splash_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        },
        opaque: true,
        barrierDismissible: false),
    InitialPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.InitialPage();
        },
        opaque: true,
        barrierDismissible: false),
    HomeRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.Home();
        },
        opaque: true,
        barrierDismissible: false),
    SearchPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SearchPage();
        },
        opaque: true,
        barrierDismissible: false),
    DetailsPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<DetailsPageRouteArgs>(
              orElse: () => DetailsPageRouteArgs(
                  locationId: pathParams.getString('locationId')));
          return _i7.DetailsPage(locationId: args.locationId);
        },
        opaque: true,
        barrierDismissible: false),
    LocationsPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.LocationsPage();
        },
        opaque: true,
        barrierDismissible: false),
    InfectedPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.InfectedPage();
        },
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(InitialPageRoute.name, path: '/initial-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/Home', children: [
          _i1.RouteConfig(LocationsPageRoute.name, path: 'locations-page'),
          _i1.RouteConfig(InfectedPageRoute.name, path: 'infected-page')
        ]),
        _i1.RouteConfig(SearchPageRoute.name, path: '/search-page'),
        _i1.RouteConfig(DetailsPageRoute.name, path: '/details-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class InitialPageRoute extends _i1.PageRouteInfo {
  const InitialPageRoute() : super(name, path: '/initial-page');

  static const String name = 'InitialPageRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/Home', initialChildren: children);

  static const String name = 'HomeRoute';
}

class SearchPageRoute extends _i1.PageRouteInfo {
  const SearchPageRoute() : super(name, path: '/search-page');

  static const String name = 'SearchPageRoute';
}

class DetailsPageRoute extends _i1.PageRouteInfo<DetailsPageRouteArgs> {
  DetailsPageRoute({required String locationId})
      : super(name,
            path: '/details-page',
            args: DetailsPageRouteArgs(locationId: locationId));

  static const String name = 'DetailsPageRoute';
}

class DetailsPageRouteArgs {
  const DetailsPageRouteArgs({required this.locationId});

  final String locationId;
}

class LocationsPageRoute extends _i1.PageRouteInfo {
  const LocationsPageRoute() : super(name, path: 'locations-page');

  static const String name = 'LocationsPageRoute';
}

class InfectedPageRoute extends _i1.PageRouteInfo {
  const InfectedPageRoute() : super(name, path: 'infected-page');

  static const String name = 'InfectedPageRoute';
}
