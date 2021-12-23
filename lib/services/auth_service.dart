import 'dart:convert';

import 'package:hafoo/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  String baseUrl = 'http://192.168.1.8:8000/api';

  Future<UserModel> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    var url = Uri.parse('$baseUrl/register');

    var headers = {
      'content-type': 'application/json',
    };

    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    var code = jsonDecode(response.body)['code'];

    if (code == 200) {
      print('bisa neh');
      var data = jsonDecode(response.body);
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['token'];

      // SharedPreferences saveToken = await SharedPreferences.getInstance();
      // saveToken.setString('token', user.token.toString());

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    var url = Uri.parse('$baseUrl/login');

    var headers = {
      'content-type': 'application/json',
    };

    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    var code = jsonDecode(response.body)['code'];

    if (code == 200) {
      var data = jsonDecode(response.body);
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['token'];

      SharedPreferences saveToken = await SharedPreferences.getInstance();
      saveToken.setString('token', user.token.toString());

      print(user.token);

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }

  // TODO: Logout
  // Future<UserModel> logout({
  //   required String rememberToken,
  // }) async {
  //   var url = Uri.parse('$baseUrl/logout');

  //   var headers = {
  //     'content-type': 'application/json',
  //   };

  //   var body = jsonEncode({
  //     'rememberToken': rememberToken,
  //   });

  //   var response = await http.post(
  //     url,
  //     headers: headers,
  //     body: body,
  //   );

  //   print(response.body);

  //   var code = jsonDecode(response.body)['code'];

  //   if (code == 200) {
  //   }
  // }
}
