import 'package:imdb_project/data/datasource/remote_datasource.dart';
import 'package:imdb_project/domain/entities/weather.dart';
import 'package:imdb_project/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  final BaseRemoteDataSource _remoteDataSource;
  WeatherRepository(this._remoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String cityName) async{
   return (await _remoteDataSource.getWeatherByCity(cityName))!;
  }

}