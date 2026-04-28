import 'dart:async';

import 'package:mobx/mobx.dart';

part 'home.store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

// The store-class
abstract class HomeStoreBase with Store {
  @observable
  int _timer = 1500;
  int get timer => _timer;

  @observable
  bool _isRunning = false;
  bool get isRunner => _isRunning;

  Timer? _relogio;

  @action
  void startTimer() {
    _isRunning = true;

    if (_relogio != null && _relogio!.isActive) {
      _relogio?.cancel();
      _isRunning = false;
      return;
    }

    _relogio = Timer.periodic(Duration(seconds: 1), (timer) {
      _timer--;

      if (_timer <= 0) {
        _relogio?.cancel();
        _isRunning = false;
        _timer = 1500;
      }
    });
  }
}
