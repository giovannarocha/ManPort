import 'dart:convert';
import 'package:http/http.dart' as http;

class ModelLogin {
  
  var url = "http://10.0.2.2/api/login";
  validarLogin(usuario, password) async {
    try {
      var header = {"Content-Type": "application/json"};
      Map params = {"usuario": usuario, "senha": password};
      var _body = json.encode(params);
      var response = await http.post(url, headers: header, body: _body);
      
      print("STATUS = ${response.statusCode} \n MESSAGE = ${response.body}"); 
      return response.statusCode;
    } catch (e) {
      print("exceção: " + e.toString());
    }
    
  }
}