// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forecast _$ForecastFromJson(Map<String, dynamic> json) => Forecast(
  nearestArea: _extractNearestArea(json['nearest_area'] as List),
  currentCondition: _extractCurrentCondition(json['current_condition'] as List),
);

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
  'nearest_area': instance.nearestArea.toJson(),
  'current_condition': instance.currentCondition.toJson(),
};

const _$ForecastJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'nearest_area': {r'$ref': r'#/$defs/NearestArea'},
    'current_condition': {r'$ref': r'#/$defs/CurrentCondition'},
  },
  'required': ['nearest_area', 'current_condition'],
  r'$defs': {
    'NearestArea': {
      'type': 'object',
      'properties': {
        'latitude': {'type': 'number'},
        'longitude': {'type': 'number'},
        'areaName': {'type': 'string'},
        'region': {'type': 'string'},
        'country': {'type': 'string'},
      },
      'required': ['latitude', 'longitude', 'areaName', 'region', 'country'],
    },
    'CurrentCondition': {
      'type': 'object',
      'properties': {
        'FeelsLikeC': {'type': 'number'},
        'FeelsLikeF': {'type': 'number'},
        'cloudcover': {'type': 'number'},
        'humidity': {'type': 'number'},
        'observation_time': {'type': 'string'},
        'precipInches': {'type': 'number'},
        'precipMM': {'type': 'number'},
        'pressure': {'type': 'number'},
        'pressureInches': {'type': 'number'},
        'temp_C': {'type': 'number'},
        'temp_F': {'type': 'number'},
        'uvIndex': {'type': 'number'},
        'visibility': {'type': 'number'},
        'visibilityMiles': {'type': 'number'},
        'weatherCode': {'type': 'string'},
        'weatherDesc': {'type': 'string'},
        'weatherIconUrl': {'type': 'string'},
        'winddir16Point': {'type': 'string'},
        'winddirDegree': {'type': 'number'},
        'windspeedKmph': {'type': 'number'},
        'windspeedMiles': {'type': 'number'},
      },
      'required': [
        'FeelsLikeC',
        'FeelsLikeF',
        'cloudcover',
        'humidity',
        'observation_time',
        'precipInches',
        'precipMM',
        'pressure',
        'pressureInches',
        'temp_C',
        'temp_F',
        'uvIndex',
        'visibility',
        'visibilityMiles',
        'weatherCode',
        'weatherDesc',
        'weatherIconUrl',
        'winddir16Point',
        'winddirDegree',
        'windspeedKmph',
        'windspeedMiles',
      ],
    },
  },
};

ExtendedWeather _$ExtendedWeatherFromJson(Map<String, dynamic> json) =>
    ExtendedWeather(
      nearestArea: _extractNearestArea(json['nearest_area'] as List),
      currentCondition: _extractCurrentCondition(
        json['current_condition'] as List,
      ),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExtendedWeatherToJson(ExtendedWeather instance) =>
    <String, dynamic>{
      'nearest_area': instance.nearestArea.toJson(),
      'current_condition': instance.currentCondition.toJson(),
      'weather': instance.weather.map((e) => e.toJson()).toList(),
    };

const _$ExtendedWeatherJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'nearest_area': {r'$ref': r'#/$defs/NearestArea'},
    'current_condition': {r'$ref': r'#/$defs/CurrentCondition'},
    'weather': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/Weather'},
    },
  },
  'required': ['nearest_area', 'current_condition', 'weather'],
  r'$defs': {
    'NearestArea': {
      'type': 'object',
      'properties': {
        'latitude': {'type': 'number'},
        'longitude': {'type': 'number'},
        'areaName': {'type': 'string'},
        'region': {'type': 'string'},
        'country': {'type': 'string'},
      },
      'required': ['latitude', 'longitude', 'areaName', 'region', 'country'],
    },
    'CurrentCondition': {
      'type': 'object',
      'properties': {
        'FeelsLikeC': {'type': 'number'},
        'FeelsLikeF': {'type': 'number'},
        'cloudcover': {'type': 'number'},
        'humidity': {'type': 'number'},
        'observation_time': {'type': 'string'},
        'precipInches': {'type': 'number'},
        'precipMM': {'type': 'number'},
        'pressure': {'type': 'number'},
        'pressureInches': {'type': 'number'},
        'temp_C': {'type': 'number'},
        'temp_F': {'type': 'number'},
        'uvIndex': {'type': 'number'},
        'visibility': {'type': 'number'},
        'visibilityMiles': {'type': 'number'},
        'weatherCode': {'type': 'string'},
        'weatherDesc': {'type': 'string'},
        'weatherIconUrl': {'type': 'string'},
        'winddir16Point': {'type': 'string'},
        'winddirDegree': {'type': 'number'},
        'windspeedKmph': {'type': 'number'},
        'windspeedMiles': {'type': 'number'},
      },
      'required': [
        'FeelsLikeC',
        'FeelsLikeF',
        'cloudcover',
        'humidity',
        'observation_time',
        'precipInches',
        'precipMM',
        'pressure',
        'pressureInches',
        'temp_C',
        'temp_F',
        'uvIndex',
        'visibility',
        'visibilityMiles',
        'weatherCode',
        'weatherDesc',
        'weatherIconUrl',
        'winddir16Point',
        'winddirDegree',
        'windspeedKmph',
        'windspeedMiles',
      ],
    },
    'HourlyCondition': {
      'type': 'object',
      'properties': {
        'time': {'type': 'string'},
        'tempC': {'type': 'number'},
        'tempF': {'type': 'number'},
        'FeelsLikeC': {'type': 'number'},
        'FeelsLikeF': {'type': 'number'},
        'humidity': {'type': 'number'},
        'windspeedMiles': {'type': 'number'},
        'weatherDesc': {'type': 'string'},
        'weatherIconUrl': {'type': 'string'},
      },
      'required': [
        'time',
        'tempC',
        'tempF',
        'FeelsLikeC',
        'FeelsLikeF',
        'humidity',
        'windspeedMiles',
        'weatherDesc',
        'weatherIconUrl',
      ],
    },
    'Weather': {
      'type': 'object',
      'properties': {
        'date': {'type': 'string'},
        'avgtempC': {'type': 'number'},
        'avgtempF': {'type': 'number'},
        'hourly': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/HourlyCondition'},
        },
      },
      'required': ['date', 'avgtempC', 'avgtempF', 'hourly'],
    },
  },
};

NearestArea _$NearestAreaFromJson(Map<String, dynamic> json) => NearestArea(
  latitude: double.parse(json['latitude'] as String),
  longitude: double.parse(json['longitude'] as String),
  areaName: _extractValueFromList(json['areaName'] as List),
  region: _extractValueFromList(json['region'] as List),
  country: _extractValueFromList(json['country'] as List),
);

Map<String, dynamic> _$NearestAreaToJson(NearestArea instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'areaName': instance.areaName,
      'region': instance.region,
      'country': instance.country,
    };

const _$NearestAreaJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'latitude': {'type': 'number'},
    'longitude': {'type': 'number'},
    'areaName': {'type': 'string'},
    'region': {'type': 'string'},
    'country': {'type': 'string'},
  },
  'required': ['latitude', 'longitude', 'areaName', 'region', 'country'],
};

CurrentCondition _$CurrentConditionFromJson(Map<String, dynamic> json) =>
    CurrentCondition(
      FeelsLikeC: double.parse(json['FeelsLikeC'] as String),
      FeelsLikeF: double.parse(json['FeelsLikeF'] as String),
      cloudcover: double.parse(json['cloudcover'] as String),
      humidity: double.parse(json['humidity'] as String),
      observation_time: json['observation_time'] as String,
      precipInches: double.parse(json['precipInches'] as String),
      precipMM: double.parse(json['precipMM'] as String),
      pressure: double.parse(json['pressure'] as String),
      pressureInches: double.parse(json['pressureInches'] as String),
      temp_C: double.parse(json['temp_C'] as String),
      temp_F: double.parse(json['temp_F'] as String),
      uvIndex: double.parse(json['uvIndex'] as String),
      visibility: double.parse(json['visibility'] as String),
      visibilityMiles: double.parse(json['visibilityMiles'] as String),
      weatherCode: json['weatherCode'] as String,
      weatherDesc: _extractValueFromList(json['weatherDesc'] as List),
      weatherIconUrl: _extractValueFromList(json['weatherIconUrl'] as List),
      winddir16Point: json['winddir16Point'] as String,
      winddirDegree: double.parse(json['winddirDegree'] as String),
      windspeedKmph: double.parse(json['windspeedKmph'] as String),
      windspeedMiles: double.parse(json['windspeedMiles'] as String),
    );

Map<String, dynamic> _$CurrentConditionToJson(CurrentCondition instance) =>
    <String, dynamic>{
      'FeelsLikeC': instance.FeelsLikeC,
      'FeelsLikeF': instance.FeelsLikeF,
      'cloudcover': instance.cloudcover,
      'humidity': instance.humidity,
      'observation_time': instance.observation_time,
      'precipInches': instance.precipInches,
      'precipMM': instance.precipMM,
      'pressure': instance.pressure,
      'pressureInches': instance.pressureInches,
      'temp_C': instance.temp_C,
      'temp_F': instance.temp_F,
      'uvIndex': instance.uvIndex,
      'visibility': instance.visibility,
      'visibilityMiles': instance.visibilityMiles,
      'weatherCode': instance.weatherCode,
      'weatherDesc': instance.weatherDesc,
      'weatherIconUrl': instance.weatherIconUrl,
      'winddir16Point': instance.winddir16Point,
      'winddirDegree': instance.winddirDegree,
      'windspeedKmph': instance.windspeedKmph,
      'windspeedMiles': instance.windspeedMiles,
    };

const _$CurrentConditionJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'FeelsLikeC': {'type': 'number'},
    'FeelsLikeF': {'type': 'number'},
    'cloudcover': {'type': 'number'},
    'humidity': {'type': 'number'},
    'observation_time': {'type': 'string'},
    'precipInches': {'type': 'number'},
    'precipMM': {'type': 'number'},
    'pressure': {'type': 'number'},
    'pressureInches': {'type': 'number'},
    'temp_C': {'type': 'number'},
    'temp_F': {'type': 'number'},
    'uvIndex': {'type': 'number'},
    'visibility': {'type': 'number'},
    'visibilityMiles': {'type': 'number'},
    'weatherCode': {'type': 'string'},
    'weatherDesc': {'type': 'string'},
    'weatherIconUrl': {'type': 'string'},
    'winddir16Point': {'type': 'string'},
    'winddirDegree': {'type': 'number'},
    'windspeedKmph': {'type': 'number'},
    'windspeedMiles': {'type': 'number'},
  },
  'required': [
    'FeelsLikeC',
    'FeelsLikeF',
    'cloudcover',
    'humidity',
    'observation_time',
    'precipInches',
    'precipMM',
    'pressure',
    'pressureInches',
    'temp_C',
    'temp_F',
    'uvIndex',
    'visibility',
    'visibilityMiles',
    'weatherCode',
    'weatherDesc',
    'weatherIconUrl',
    'winddir16Point',
    'winddirDegree',
    'windspeedKmph',
    'windspeedMiles',
  ],
};

PirateForecast _$PirateForecastFromJson(Map<String, dynamic> json) =>
    PirateForecast(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      flags: PirateFlags.fromJson(json['flags'] as Map<String, dynamic>),
      daily: PirateDaily.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PirateForecastToJson(PirateForecast instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'flags': instance.flags.toJson(),
      'daily': instance.daily.toJson(),
    };

const _$PirateForecastJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'latitude': {'type': 'number'},
    'longitude': {'type': 'number'},
    'flags': {r'$ref': r'#/$defs/PirateFlags'},
    'daily': {r'$ref': r'#/$defs/PirateDaily'},
  },
  'required': ['latitude', 'longitude', 'flags', 'daily'],
  r'$defs': {
    'PirateFlags': {
      'type': 'object',
      'properties': {
        'nearestCity': {'type': 'string'},
        'nearestSubNational': {'type': 'string'},
        'nearestCountry': {'type': 'string'},
      },
      'required': ['nearestCity', 'nearestSubNational', 'nearestCountry'],
    },
    'PirateDailyData': {
      'type': 'object',
      'properties': {
        'time': {'type': 'integer'},
        'summary': {'type': 'string'},
        'icon': {'type': 'string'},
        'sunriseTime': {'type': 'number'},
        'sunsetTime': {'type': 'number'},
        'precipProbability': {'type': 'number'},
        'temperatureHigh': {'type': 'number'},
        'temperatureLow': {'type': 'number'},
        'humidity': {'type': 'number'},
        'windSpeed': {'type': 'number'},
        'uvIndex': {'type': 'number'},
      },
      'required': [
        'time',
        'summary',
        'icon',
        'sunriseTime',
        'sunsetTime',
        'precipProbability',
        'temperatureHigh',
        'temperatureLow',
        'humidity',
        'windSpeed',
        'uvIndex',
      ],
    },
    'PirateDaily': {
      'type': 'object',
      'properties': {
        'summary': {'type': 'string'},
        'icon': {'type': 'string'},
        'data': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/PirateDailyData'},
        },
      },
      'required': ['summary', 'icon', 'data'],
    },
  },
};

PirateDaily _$PirateDailyFromJson(Map<String, dynamic> json) => PirateDaily(
  summary: json['summary'] as String,
  icon: json['icon'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => PirateDailyData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PirateDailyToJson(PirateDaily instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'icon': instance.icon,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

const _$PirateDailyJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'summary': {'type': 'string'},
    'icon': {'type': 'string'},
    'data': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/PirateDailyData'},
    },
  },
  'required': ['summary', 'icon', 'data'],
  r'$defs': {
    'PirateDailyData': {
      'type': 'object',
      'properties': {
        'time': {'type': 'integer'},
        'summary': {'type': 'string'},
        'icon': {'type': 'string'},
        'sunriseTime': {'type': 'number'},
        'sunsetTime': {'type': 'number'},
        'precipProbability': {'type': 'number'},
        'temperatureHigh': {'type': 'number'},
        'temperatureLow': {'type': 'number'},
        'humidity': {'type': 'number'},
        'windSpeed': {'type': 'number'},
        'uvIndex': {'type': 'number'},
      },
      'required': [
        'time',
        'summary',
        'icon',
        'sunriseTime',
        'sunsetTime',
        'precipProbability',
        'temperatureHigh',
        'temperatureLow',
        'humidity',
        'windSpeed',
        'uvIndex',
      ],
    },
  },
};

PirateFlags _$PirateFlagsFromJson(Map<String, dynamic> json) => PirateFlags(
  nearestCity: json['nearestCity'] as String,
  nearestSubNational: json['nearestSubNational'] as String,
  nearestCountry: json['nearestCountry'] as String,
);

Map<String, dynamic> _$PirateFlagsToJson(PirateFlags instance) =>
    <String, dynamic>{
      'nearestCity': instance.nearestCity,
      'nearestSubNational': instance.nearestSubNational,
      'nearestCountry': instance.nearestCountry,
    };

const _$PirateFlagsJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'nearestCity': {'type': 'string'},
    'nearestSubNational': {'type': 'string'},
    'nearestCountry': {'type': 'string'},
  },
  'required': ['nearestCity', 'nearestSubNational', 'nearestCountry'],
};

PirateDailyData _$PirateDailyDataFromJson(Map<String, dynamic> json) =>
    PirateDailyData(
      time: (json['time'] as num).toInt(),
      summary: json['summary'] as String,
      icon: json['icon'] as String,
      sunriseTime: (json['sunriseTime'] as num).toDouble(),
      sunsetTime: (json['sunsetTime'] as num).toDouble(),
      precipProbability: (json['precipProbability'] as num).toDouble(),
      temperatureHigh: (json['temperatureHigh'] as num).toDouble(),
      temperatureLow: (json['temperatureLow'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      windSpeed: (json['windSpeed'] as num).toDouble(),
      uvIndex: (json['uvIndex'] as num).toDouble(),
    );

Map<String, dynamic> _$PirateDailyDataToJson(PirateDailyData instance) =>
    <String, dynamic>{
      'time': instance.time,
      'summary': instance.summary,
      'icon': instance.icon,
      'sunriseTime': instance.sunriseTime,
      'sunsetTime': instance.sunsetTime,
      'precipProbability': instance.precipProbability,
      'temperatureHigh': instance.temperatureHigh,
      'temperatureLow': instance.temperatureLow,
      'humidity': instance.humidity,
      'windSpeed': instance.windSpeed,
      'uvIndex': instance.uvIndex,
    };

const _$PirateDailyDataJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'time': {'type': 'integer'},
    'summary': {'type': 'string'},
    'icon': {'type': 'string'},
    'sunriseTime': {'type': 'number'},
    'sunsetTime': {'type': 'number'},
    'precipProbability': {'type': 'number'},
    'temperatureHigh': {'type': 'number'},
    'temperatureLow': {'type': 'number'},
    'humidity': {'type': 'number'},
    'windSpeed': {'type': 'number'},
    'uvIndex': {'type': 'number'},
  },
  'required': [
    'time',
    'summary',
    'icon',
    'sunriseTime',
    'sunsetTime',
    'precipProbability',
    'temperatureHigh',
    'temperatureLow',
    'humidity',
    'windSpeed',
    'uvIndex',
  ],
};

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
  date: json['date'] as String,
  avgtempC: double.parse(json['avgtempC'] as String),
  avgtempF: double.parse(json['avgtempF'] as String),
  hourly: (json['hourly'] as List<dynamic>)
      .map((e) => HourlyCondition.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
  'date': instance.date,
  'avgtempC': instance.avgtempC,
  'avgtempF': instance.avgtempF,
  'hourly': instance.hourly.map((e) => e.toJson()).toList(),
};

const _$WeatherJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'date': {'type': 'string'},
    'avgtempC': {'type': 'number'},
    'avgtempF': {'type': 'number'},
    'hourly': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/HourlyCondition'},
    },
  },
  'required': ['date', 'avgtempC', 'avgtempF', 'hourly'],
  r'$defs': {
    'HourlyCondition': {
      'type': 'object',
      'properties': {
        'time': {'type': 'string'},
        'tempC': {'type': 'number'},
        'tempF': {'type': 'number'},
        'FeelsLikeC': {'type': 'number'},
        'FeelsLikeF': {'type': 'number'},
        'humidity': {'type': 'number'},
        'windspeedMiles': {'type': 'number'},
        'weatherDesc': {'type': 'string'},
        'weatherIconUrl': {'type': 'string'},
      },
      'required': [
        'time',
        'tempC',
        'tempF',
        'FeelsLikeC',
        'FeelsLikeF',
        'humidity',
        'windspeedMiles',
        'weatherDesc',
        'weatherIconUrl',
      ],
    },
  },
};

HourlyCondition _$HourlyConditionFromJson(Map<String, dynamic> json) =>
    HourlyCondition(
      time: json['time'] as String,
      tempC: double.parse(json['tempC'] as String),
      tempF: double.parse(json['tempF'] as String),
      FeelsLikeC: double.parse(json['FeelsLikeC'] as String),
      FeelsLikeF: double.parse(json['FeelsLikeF'] as String),
      humidity: double.parse(json['humidity'] as String),
      windspeedMiles: double.parse(json['windspeedMiles'] as String),
      weatherDesc: _extractValueFromList(json['weatherDesc'] as List),
      weatherIconUrl: _extractValueFromList(json['weatherIconUrl'] as List),
    );

Map<String, dynamic> _$HourlyConditionToJson(HourlyCondition instance) =>
    <String, dynamic>{
      'time': instance.time,
      'tempC': instance.tempC,
      'tempF': instance.tempF,
      'FeelsLikeC': instance.FeelsLikeC,
      'FeelsLikeF': instance.FeelsLikeF,
      'humidity': instance.humidity,
      'windspeedMiles': instance.windspeedMiles,
      'weatherDesc': instance.weatherDesc,
      'weatherIconUrl': instance.weatherIconUrl,
    };

const _$HourlyConditionJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'time': {'type': 'string'},
    'tempC': {'type': 'number'},
    'tempF': {'type': 'number'},
    'FeelsLikeC': {'type': 'number'},
    'FeelsLikeF': {'type': 'number'},
    'humidity': {'type': 'number'},
    'windspeedMiles': {'type': 'number'},
    'weatherDesc': {'type': 'string'},
    'weatherIconUrl': {'type': 'string'},
  },
  'required': [
    'time',
    'tempC',
    'tempF',
    'FeelsLikeC',
    'FeelsLikeF',
    'humidity',
    'windspeedMiles',
    'weatherDesc',
    'weatherIconUrl',
  ],
};
