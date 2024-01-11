import 'package:flutter/material.dart';

class DescriptionCard extends StatefulWidget {
  final String title;
  final String description;
  final String unit;

  const DescriptionCard({
    required this.title,
    required this.description,
    required this.unit,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => DescriptionCardState();
}

class DescriptionCardState extends State<DescriptionCard> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w400,
                height: 0.08,
              ),
            ),
            Row(
              children: [
                Text(
                  widget.description,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                    height: 0.04,
                  ),
                ),
                Text(
                  widget.unit,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
