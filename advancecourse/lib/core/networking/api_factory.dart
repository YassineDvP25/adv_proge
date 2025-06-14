import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
        addDioHeader();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }
  static void addDioHeader() {
    dio?.options.headers.addAll({
      
      'Accept': 'application/json',
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzQ5Mzc3OTU2LCJleHAiOjE3NDk0NjQzNTYsIm5iZiI6MTc0OTM3Nzk1NiwianRpIjoiSUJlRGVrSmpNVW9Ia25ibiIsInN1YiI6IjQwMzIiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.XeRsZ5QQpda8HtG3MkLdciZ9LrFGMHimtkOcYQGDfqI',
    });
  }



  

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}