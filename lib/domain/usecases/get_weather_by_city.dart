import 'package:imdb_project/domain/repository/base_weather_repository.dart';

class GetWeatherByCityName{
  final BaseWeatherRepository _repository;
  GetWeatherByCityName(this._repository);
  execute(String cityName){
    return _repository.getWeatherByCityName(cityName);
  }
}