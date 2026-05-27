import 'package:flutter/material.dart';
import 'package:genui/genui.dart';
import 'package:json_schema_builder/json_schema_builder.dart';

final simpleWeatherSchema = S.object(
  properties: {
    'location': S.string(description: 'The location to check the weather.'),
    'date': S.string(description: 'The date to check the weather.'),
  },
);

final weatherInput = CatalogItem(
  name: 'WeatherInput',
  dataSchema: simpleWeatherSchema,
  widgetBuilder: (itemContext) {
    final json = itemContext.data as Map<String, Object?>;
    print(json);
    if (json.isNotEmpty) {
      final data = SimpleWeatherData.fromJson(json);
      return WeatherInput(data: data);
    } else {
      return WeatherInput(data: SimpleWeatherData.defaultValues());
    }
  },
);

class SimpleWeatherData {
  String location;
  DateTime date;

  SimpleWeatherData({required this.location, required this.date});

  factory SimpleWeatherData.defaultValues() {
    return SimpleWeatherData(location: 'Baltimore', date: DateTime.now());
  }

  factory SimpleWeatherData.fromJson(Map<String, Object?> json) {
    print("trying from json");
    return SimpleWeatherData(
      location: json['location'] as String,
      date: DateTime.parse(json['date'] as String),
    );
  }
}

class WeatherInput extends StatefulWidget {
  final SimpleWeatherData data;

  const WeatherInput({super.key, required this.data});

  @override
  State<WeatherInput> createState() => _WeatherInputState();
}

class _WeatherInputState extends State<WeatherInput> {
  late TextEditingController _controller;
  DateTime? selectedDate;

  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().copyWith(month: 1, day: 1),
      lastDate: DateTime.now().copyWith(month: 12, day: 31),
    );

    setState(() {
      selectedDate = pickedDate;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Enter a city'),
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            Text(selectedDate != null ? '$selectedDate' : 'No date selected'),
            const SizedBox(width: 16.0),
            OutlinedButton(
              onPressed: _selectDate,
              child: const Text('Select Date'),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        FilledButton.tonal(
          onPressed: () {
            print('hi');
            print(selectedDate);
            print(_controller.text);
          },
          child: Text('Get Forecast'),
        ),
      ],
    );
  }
}
