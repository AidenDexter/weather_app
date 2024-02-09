import 'package:flutter/material.dart';

class WeatherTemplateWidget extends StatelessWidget {
  final String image;
  final String title;
  final String temperature;
  const WeatherTemplateWidget({
    super.key,
    required this.image,
    required this.title,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          scale: 8,
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 3),
            Text(
              temperature,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ],
    );
  }
}
