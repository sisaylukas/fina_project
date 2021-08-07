import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_exa/ui/views/home/home_view_body.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: HomeViewBody(index: model.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 100,
          backgroundColor: Color(0xFF202442),
          selectedFontSize: 15,
          selectedItemColor: Color(0xFF00FC6C),
          onTap: model.setIndex,
          unselectedItemColor: Colors.grey,
          currentIndex: model.currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.search,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.plus_circle_fill,
                ),
                label: "Request"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.profile_circled,
                ),
                label: "Account"),
          ],
        ),
      ),
    );
  }
}
