import 'package:stacked/stacked.dart';

class MyRequestViewModel extends FutureViewModel {
  @override
  Future futureToRun() async {
    await Future.delayed(Duration(seconds: 2));
  }
}
