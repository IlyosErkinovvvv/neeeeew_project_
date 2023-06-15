// ignore: file_names
import 'package:_neeeeew_project_/data/model/eduOn_model.dart';
import 'package:dio/dio.dart';

class EduOnService {
  Future<dynamic> getEduOnService() async {
    try {
      Response response = await Dio().get("http://192.168.42.35:4000/courses");
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => MyService.fromJson(e))
            .toList();
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }
}
