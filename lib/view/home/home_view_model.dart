import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int count = 0;

  // int get counter => count;

  incrementCounter() {
    count++;
    print(count);
    notifyListeners();
  }
}
