import 'package:dio/dio.dart';

import '../../featured/data/model.dart';
import 'package:dio/dio.dart';
import '../../featured/data/model.dart';

class Apiservice {
  late final Dio dio;

  Apiservice({required this.dio});

  Future<Response> getAllMonthsResponse(String token) async {
    try {
      final response = await dio.get(
        'https://elmazone.topbusiness.io/api/payments/all-months',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
      return response;
    } catch (error) {
      throw Exception('Failed to fetch data');
    }
  }
  Future<Monthes> getAllMonths(String token) async {
    try {
      final response = await dio.get(
        'https://elmazone.topbusiness.io/api/payments/all-months',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );

      // Check if the response is successful
      if (response.statusCode == 200) {
        // Parse the JSON response using the fromJson constructor
        return Monthes.fromJson(response.data);
      } else {
        // If the response is not successful, throw an exception
        throw Exception('Failed to fetch data');
      }
    } catch (error) {
      // Catch any errors that occurred during the request
      throw Exception('Failed to fetch data');
    }
  }

}

