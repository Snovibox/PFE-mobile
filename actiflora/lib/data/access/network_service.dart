import 'package:dio/dio.dart';

class  NetworkService {
  late Dio dio;

  String get baseUrl {
    return 'https://app4pfe.herokuapp.com/';
  }

  Uri get baseUri {
    return Uri.parse('https://app4pfe.herokuapp.com/');
  }

  NetworkService() {
    dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: false));
  }
}