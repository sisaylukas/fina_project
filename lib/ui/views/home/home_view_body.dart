import 'package:flutter/material.dart';
import 'package:stacked_exa/ui/views/landing_view/home_page_view.dart';
import 'package:stacked_exa/ui/views/myrequest/myrequest_view.dart';
import 'package:stacked_exa/ui/views/search/search_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({required this.index, Key? key}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return Search();
      case 2:
        return MyRequest();
      default:
        return Container();
    }
  }
}
