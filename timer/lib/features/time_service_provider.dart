import 'package:flutter/cupertino.dart';
import 'package:flutter_hackathon/features/timer_service.dart';

class TimerServiceProvider extends InheritedWidget {
  const TimerServiceProvider(
      {required this.service, required final Widget child, final Key? key})
      : super(key: key, child: child);

  final TimerService service;

  @override
  bool updateShouldNotify(final TimerServiceProvider old) => service != old.service;
}
