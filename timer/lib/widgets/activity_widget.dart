import 'package:flutter/material.dart';

import 'package:flutter_hackathon/entities/clock_widget.dart';
import 'package:flutter_hackathon/shared/format_duration.dart';

class ActivityWidget extends StatelessWidget {
  final String activityName;
  final Duration max;
  final Duration min;
  final Duration avg;
  const ActivityWidget(this.activityName, this.max, this.min, this.avg,
      {super.key});

  @override
  Widget build(final BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(20.0),
      width: 180.0,
      height: 130.0,
      decoration: BoxDecoration(
        color: Colors.teal[50],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activityName,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'max: ${formatDuration(max)}, min: ${formatDuration(min)}, avg: ${formatDuration(avg)}',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ),
          ClockWidget(activityName: activityName),
        ],
      ),
    );
  }
}

// class ClockWidget extends StatefulWidget {
//   final String activityName;
//
//   const ClockWidget({
//     required this.activityName,
//     super.key,
//   });
//
//   @override
//   State<ClockWidget> createState() => ClockWidgetState();
// }
//
// class ClockWidgetState extends State<ClockWidget> {
//   @override
//   Widget build(final BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [const Text('Привет, '), Text(widget.activityName)],
//     );
//   }
// }
