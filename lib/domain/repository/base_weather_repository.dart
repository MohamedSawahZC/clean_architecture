import 'package:imdb_project/domain/entities/weather.dart';

abstract class BaseWeatherRepository{
  Future<Weather> getWeatherByCityName(String cityName);
}