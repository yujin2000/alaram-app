class WeatherModel {
  final String? icon;
  final double? temp;
  final double? feelsLike;
  final double? pressure;
  final double? speed;

  WeatherModel({
    this.icon,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.speed,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      icon: json['weather'][0]['icon'],
      temp: json['main']['temp'].toDouble() - 273.15,
      feelsLike: json['main']['feels_like'].toDouble() - 273.15,
      pressure: json['main']['pressure'].toDouble(),
      speed: json['wind']['speed'].toDouble(),
    );
  }
}
