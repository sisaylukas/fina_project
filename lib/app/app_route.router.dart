// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/views/Description/description_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/myrequest/myrequest_view.dart';
import '../ui/views/search/search_view.dart';

class Routes {
  static const String homeView = '/home-view';
  static const String myRequest = '/my-request';
  static const String search = '/Search';
  static const String descriptionView = '/description-view';
  static const all = <String>{
    homeView,
    myRequest,
    search,
    descriptionView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.myRequest, page: MyRequest),
    RouteDef(Routes.search, page: Search),
    RouteDef(Routes.descriptionView, page: DescriptionView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    MyRequest: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MyRequest(),
        settings: data,
      );
    },
    Search: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Search(),
        settings: data,
      );
    },
    DescriptionView: (data) {
      var args = data.getArgs<DescriptionViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => DescriptionView(
          companyData: args.companyData,
          key: args.key,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DescriptionView arguments holder class
class DescriptionViewArguments {
  final Map<String, dynamic> companyData;
  final Key? key;
  DescriptionViewArguments({required this.companyData, this.key});
}
