import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../model/model.dart';

 abstract class services extends StatelessWidget {
   services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: MaterialButton(onPressed: () {
        //  request();
        },
          child: Text("dio"),
        ),
      ),
    );
  }

  final dio = Dio();
//   Future<List<Users>> getWeather() ;
    Future<List<Users>> getAllUsers() ;

 // void request() async {
  //   Response  response;
  //    final base_url='https://gorest.co.in/public/v2/';
  //    final EndPoint='users';
  //   response = await dio.get('${base_url} ${EndPoint}');
  //   print(response.data.toString());
  //   // The below request is the same as above.
  //   response = await dio.get(
  //     '/test',
  //     queryParameters: {'id': 12, 'name': 'dio'},
  //   );
  //   print(response.data.toString());
  // // }
  //  Future<List<Users>> getWeather({required String cityName}) async {
  //    try{
  //      Response response = await dio.get('${base_url}users');
  //      Wheather weathermodel=Wheather.fromJson(response.data);
  //      return weathermodel;
  //
  //    }on DioException catch (e){
  //      final String errMassege=e.response?.data['error']['massege']??'oops not good response code';
  //      //?? mean left side ==null  so do right but ? only mean the value can be null but ! mean value never be null
  //      throw Exception(errMassege);
  //    }catch(e){
  //      log(e.toString());
  //      throw Exception('oops please try later there is error');
  //    }

}
