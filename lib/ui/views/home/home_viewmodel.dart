import 'package:stacked/stacked.dart';
import 'package:stacked_exa/app/app_route.locator.dart';
import 'package:stacked_exa/app/app_route.router.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void setHomeViewText(String value) async {
    setBusy(true);
    await Future.delayed(Duration(seconds: 2)).then((value) => print("object"));

    setBusy(false);
    notifyListeners();
    _navigationService.navigateTo(Routes.myRequest);
  }
}
