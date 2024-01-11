import 'package:flutter/material.dart';

import 'package:flutter_hackathon/features/timer_service.dart';
import 'package:flutter_hackathon/shared/format_duration.dart';

class ClockWidget extends StatefulWidget {
  final String activityName;
  Duration currentDuration = Duration.zero;

  ClockWidget({
    required this.activityName,
    super.key,
  });

  @override
  State<ClockWidget> createState() => ClockWidgetState();
}

class ClockWidgetState extends State<ClockWidget> {
  @override
  Widget build(final BuildContext context) {
    final timerService = TimerService.of(context);
    return AnimatedBuilder(
      animation: timerService,
      builder: (context, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              formatDuration(
                timerService.currentActivity == widget.activityName
                    ? timerService.currentDuration
                    : widget.currentDuration,
              ),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            IconButton(
              iconSize: 35,
              icon: Icon(
                !(timerService.currentActivity == widget.activityName)
                    ? Icons.play_circle_fill
                    : Icons.pause_circle_filled,
              ),
              onPressed: !timerService.isRunning
                  ? () {
                      timerService.start(
                          widget.currentDuration, widget.activityName);
                    }
                  : timerService.currentActivity == widget.activityName
                      ? () {
                          widget.currentDuration = timerService.stop();
                        }
                      : null,
              color: Colors.blue,
            ),
          ],
        );
      },
    );
  }
}
