import 'package:stacked/stacked.dart';
import 'package:stacked_exa/app/app_route.locator.dart';
import 'package:stacked_exa/app/app_route.logger.dart';
import 'package:stacked_services/stacked_services.dart';

class DescriptionViewModel extends BaseViewModel {
  final log = getLogger('DescriptionViewModel');
  final NavigationService _navigationService = locator<NavigationService>();
  void onBackTaP() {
    _navigationService.back();
  }
}
