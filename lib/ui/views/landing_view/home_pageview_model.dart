import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_exa/app/app_route.locator.dart';
import 'package:stacked_exa/app/app_route.logger.dart';
import 'package:stacked_exa/app/app_route.router.dart';

import 'package:stacked_services/stacked_services.dart';

class HomePageModelView extends FutureViewModel {
  final log = getLogger('HomePageModelView');
  final NavigationService _navigationService = locator<NavigationService>();

  int _selectedCatagoryIndex = 0;
  int get selectedCatagoryIndex => _selectedCatagoryIndex;
  List<String> get catagory => [
        'All',
        'Software',
        'Electircal',
        'Mechanical',
        'Civil',
        'Mining',
        'ElectroM'
      ];
  List<IconData> get icons => [
        Icons.all_inclusive_rounded,
        Icons.laptop_mac,
        Icons.power,
        Icons.build,
        Icons.car_repair,
        Icons.build,
        Icons.construction
      ];

  List<Map<String, dynamic>> _allData = [
    {
      "name": "KurazzzTech",
      "sector": "Technology Campany",
      "cat": "Software",
      'department': ['backend', 'Flutter']
    },
    {"name": "Minab", "sector": "Technology Campany", "cat": "Software"},
    {"name": "Mentory", "sector": "Technology Campany", "cat": "Software"},
    {"name": "MCC PLC", "sector": "Constraction Campany", "cat": "Civil"},
    {"name": "Onelight ", "sector": "Technology Campany", "cat": "Electrical"},
    {"name": "Gorgir PLC", "sector": "Mining", "cat": "Mining"},
  ];

  List<Map<String, dynamic>> _listToShow = [];
  List<Map<String, dynamic>> get listToShow => _listToShow;

  get icon => null;

  Future<void> setHomeViewText() async {
    await Future.delayed(Duration(seconds: 1)).then((value) => print("object"));
  }

  @override
  Future futureToRun() {
    _listToShow = _allData;
    return setHomeViewText();
  }

  @override
  void onData(data) {
    if (data != null) {
      notifyListeners();
    }
    super.onData(data);
  }

  void onCatagories({required String catagory, required int index}) {
    _selectedCatagoryIndex = index;
    initialise();
    if (catagory == 'All') {
      _listToShow = _allData;
    } else {
      _listToShow = [];

      _allData.forEach((element) {
        if (element['cat'] == catagory) {
          _listToShow.add(element);
        }
      });
    }
    notifyListeners();
  }

  void onDescriptionTap(int index) {
    log.d(index);
    Map<String, dynamic> tempCompanyData = listToShow[index];
    log.e(tempCompanyData);
    _navigationService.navigateTo(Routes.descriptionView,
        arguments: DescriptionViewArguments(companyData: tempCompanyData));
  }
}
