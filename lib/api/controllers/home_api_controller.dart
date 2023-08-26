import 'dart:convert';

import 'package:project_one/api/api_models/main_response.dart';
import 'package:project_one/api/api_settings.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class HomeApiController {
  final dio = Dio();
  late List<Advertisement> advertisements = [];

  Future<Data> getHome() async {
    var uri = Uri.parse(
        'https://fitnass.brandtechnical.tech/public/api/home?lat=25&long=30');
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      MainResponse mainResponse = MainResponse.fromJson(jsonData);
      advertisements = List<Advertisement>.from(
        jsonData['data']['Advertisements']
            .map((x) => Advertisement.fromJson(x)),
      );
      return mainResponse.data;
    } else {
      throw Exception('Faild to load data');
    }

    //
    // getHome({required double latitude , required double longitude }) async {
    //   try {
    //     final response = await dio.get(
    //       "https://fitnass.brandtechnical.tech/public/api/home?lat=25&long=30",
    //     );
    //     MainResponse homeResponse =   MainResponse.fromJson(jsonDecode(response.data)) ;
    //
    //   } on DioError catch (e) {
    //     print('err ${e.message}');
    //
    //   }
    // }
    //
  }
}
