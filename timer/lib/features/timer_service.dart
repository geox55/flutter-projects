import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_hackathon/features/time_service_provider.dart';

class TimerService extends ChangeNotifier {
  Stopwatch? _watch;
  Timer? _timer;
  String? _activity;

  Duration get currentDuration => _currentDuration;
  Duration _currentDuration = Duration.zero;
  Duration _initialDuration = Duration.zero;
  String? get currentActivity => _activity;

  bool get isRunning => _timer != null;

  TimerService() {
    _watch = Stopwatch();
  }

  void _onTick(final Timer timer) {
    _currentDuration = _watch!.elapsed + _initialDuration;

    // notify all listening widgets
    notifyListeners();
  }

  void start(final Duration duration, final String activity) {
    if (_timer != null) return;
    _currentDuration = duration;
    _initialDuration = duration;
    _activity = activity;
    _watch?.reset();

    _timer = Timer.periodic(const Duration(seconds: 1), _onTick);
    _watch?.start();

    notifyListeners();
  }

  Duration stop() {
    _timer?.cancel();
    _timer = null;
    _watch?.stop();
    _currentDuration = _watch!.elapsed + _initialDuration;
    _activity = null;

    notifyListeners();
    return _watch!.elapsed + _initialDuration;
  }

  void reset() {
    stop();
    _watch?.reset();
    _currentDuration = Duration.zero;

    notifyListeners();
  }

  static TimerService of(final BuildContext context) {
    var provider =
        context.dependOnInheritedWidgetOfExactType<TimerServiceProvider>()
            as TimerServiceProvider;
    return provider.service;
  }
}
