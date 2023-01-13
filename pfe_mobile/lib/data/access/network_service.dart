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

class MyWoocommerceAccess {
  String get baseUrl {
    return 'https://phaelflor-store.com/';
  }

  String get consumerKey {
    return 'ck_70f2d66ab174ae42bf79e77ed68595b9b228c2c8';
  }

  String get consumerSecret  {
    return 'cs_b8386605e2c44a7988c8df7a0b4624e7c507ccd9';
  }
}