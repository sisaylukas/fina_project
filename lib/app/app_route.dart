import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_exa/service/test_service.dart';
import 'package:stacked_exa/ui/views/Description/description_view.dart';
import 'package:stacked_exa/ui/views/home/home_view.dart';
import 'package:stacked_exa/ui/views/myrequest/myrequest_view.dart';
import 'package:stacked_exa/ui/views/search/search_view.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: HomeView),
  MaterialRoute(page: MyRequest),
  MaterialRoute(page: Search),
  MaterialRoute(page: DescriptionView),
], dependencies: [
  LazySingleton(classType: TestService),
  LazySingleton(classType: NavigationService),
], logger: StackedLogger())
class AppSetup {}
