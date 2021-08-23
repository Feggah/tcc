// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../view/home.dart' as _i3;
import '../view/pages/infected_page.dart' as _i6;
import '../view/pages/locations_page.dart' as _i5;
import '../view/pages/search_page.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.Home();
        }),
    SearchPageRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SearchPage();
        },
        opaque: true,
        barrierDismissible: false),
    LocationsPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.LocationsPage();
        }),
    InfectedPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.InfectedPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/', children: [
          _i1.RouteConfig(LocationsPageRoute.name, path: 'locations-page'),
          _i1.RouteConfig(InfectedPageRoute.name, path: 'infected-page')
        ]),
        _i1.RouteConfig(SearchPageRoute.name, path: '/search-page')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

class SearchPageRoute extends _i1.PageRouteInfo {
  const SearchPageRoute() : super(name, path: '/search-page');

  static const String name = 'SearchPageRoute';
}

class LocationsPageRoute extends _i1.PageRouteInfo {
  const LocationsPageRoute() : super(name, path: 'locations-page');

  static const String name = 'LocationsPageRoute';
}

class InfectedPageRoute extends _i1.PageRouteInfo {
  const InfectedPageRoute() : super(name, path: 'infected-page');

  static const String name = 'InfectedPageRoute';
}
