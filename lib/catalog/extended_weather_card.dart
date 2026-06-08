import 'package:flutter/material.dart';
import 'package:genui_workshop/genui_utils.dart';
import 'package:shared/shared.dart';
import 'package:genui/genui.dart';
import 'package:json_schema_builder/json_schema_builder.dart';
import 'dart:io';

import 'dart:convert';

final forecastSchema = S.object(
  properties: {
    'latitude': S.number(),
    'longitude': S.number(),
    'area_name': S.string(),
    //"flags": S.object(),
    'current_condition': S.object(
      properties: {
        "temp_C": S.number(),
        "temp_F": S.number(),
      }
    ),
    'weather': S.list(
items:S.object(properties: {
    'avgtempC': S.number(),
    'avgtempF': S.number(),
    'date': S.string()
})
    ),
  },
);

final weatherCard = CatalogItem(
  name: 'WeatherCard',
  dataSchema: forecastSchema,
  widgetBuilder: (itemContext) {
    print("itemContext ${itemContext.data}");

    final pirateForecast = PirateForecast.fromJson(weatherJson);

    //final json = itemContext.data as Map<String, Object?>;
    //final data = PirateForecast.fromJson(json);
    return ExtendedWeatherCard(data: pirateForecast);
  },
);

class ExtendedWeatherCard extends StatelessWidget {
  final PirateForecast data;
  const ExtendedWeatherCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Row(
              children: [
                const Icon(Icons.sunny, size: 28),
                const SizedBox(width: 12),
                const Text(
                  "4-Day Weather Forecast",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text("Friday, May 31, 2024", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("High: 27°C", style: TextStyle(fontSize: 16)),
                Text("Low: 15°C", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              "Sunny with light breeze",
              style: TextStyle(color: Colors.grey),
            ),
            const Divider(height: 30),
            // Bottom 3-day forecast
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildForecastDay(
                  "Sat, Jun 1",
                  Icons.cloud_outlined,
                  "25°C",
                  "16°C",
                ),
                _buildForecastDay("Sun, Jun 2", Icons.sunny, "28°C", "17°C"),
                _buildForecastDay("Mon, Jun 3", Icons.grid_3x3, "22°C", "14°C"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForecastDay(String day, IconData icon, String high, String low) {
    return Column(
      children: [
        Text(day, style: const TextStyle(color: Colors.grey, fontSize: 14)),
        const SizedBox(height: 12),
        Icon(icon, size: 24, color: Colors.grey[700]),
        const SizedBox(height: 12),
        Text("H: $high", style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 4),
        Text("L: $low", style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
