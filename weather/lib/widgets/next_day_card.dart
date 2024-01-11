import 'package:flutter/widgets.dart';

class NextDayCard extends StatefulWidget {
  final String nextDayTitle;
  final String temperatureC;

  const NextDayCard({
    required this.nextDayTitle,
    required this.temperatureC,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => NextDayCardState();
}

class NextDayCardState extends State<NextDayCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.temperatureC),
        Text(widget.nextDayTitle),
      ],
    );
  }
}
