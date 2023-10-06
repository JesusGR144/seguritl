import 'package:dio/dio.dart';
import 'package:seguritl/dominio/entidades/mensaje.dart';
import 'package:seguritl/infraestructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Mensaje> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}
