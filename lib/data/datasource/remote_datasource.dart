import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:imdb_project/core/utils/constants.dart';
import 'package:imdb_project/data/models/weather_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModel?> getWeatherByCity(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCity(String cityName) async{
    try{
      final dio = Dio()
        ..interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          compact: false,
        ));
      var response = await dio.get("${AppConstants.baseUrl}/weather?q=${cityName}&appid=${AppConstants.appKey}");
      return WeatherModel.fromJson(response.data);
    }catch(e){
      return null;
    }

  }

}