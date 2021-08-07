import 'package:stacked/stacked.dart';

class SearchViewModel extends FutureViewModel {
  @override
  Future futureToRun() async {
    await Future.delayed(Duration(seconds: 2));
  }
}
