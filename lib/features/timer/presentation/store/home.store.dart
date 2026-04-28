import 'dart:async';

import 'package:mobx/mobx.dart';

part 'home.store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

// The store-class
abstract class HomeStoreBase with Store {
  @observable
  int _timer = 1500;
  int get timer => _timer;

  @computed
  String get formattedTime {
    int min = _timer ~/ 60;
    int sec = _timer % 60;

    String minStr = min.toString().padLeft(2, '0');
    String secStr = sec.toString().padLeft(2, '0');

    return '$minStr:$secStr';
  }

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
