import 'package:dio/dio.dart';
import 'package:pizza_delivery_app/app/exceptions/rest_exception.dart';
import 'package:pizza_delivery_app/app/models/user_model.dart';

class AuthRepository {
  Future<UserModel> login(String email, String password) async {
    try {
      final response = await Dio().post('http://192.168.1.6:8888/user/auth',
          data: {'email': email, 'password': password});

      return UserModel.fromMap(response.data);
    } on DioError catch (e) {
      print(e);
      String message = 'Erro ao autenticar usuário';

      // if 403: login ou senha invalidos
      if (e?.response?.statusCode == 403) {
        message = 'Usuario ou senha inválidos';
      }

      throw RestException(message);
    }
  }
}
