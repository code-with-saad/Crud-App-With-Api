import 'dart:convert';

import 'package:api_second_class/model/usermodel.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart%20';

getuser() async {
  const url = "https://maaz-api.tga-edu.com/api/users";
  var baseurl = Uri.parse(url);
  var response = await http.get(baseurl);
  print(response.body);
  var responedata = jsonDecode(response.body);
  // var userdata = UserModel.fromJson(responedata);
  print(responedata.data);
  return responedata;
}

adduser(data) async {
  const url = "https://maaz-api.tga-edu.com/api/users";
  var baseurl = Uri.parse(url);
  final response = await http.post(baseurl,
      body: jsonEncode(data), headers: {"content-type": "application/json"});
  print(response.body);
  return response.body;
}

deleteuser(id) async {
  var url = "https://maaz-api.tga-edu.com/api/users/$id";
  Uri uri = Uri.parse(url);
  final response = await http.delete(uri);
  print(response.body);
  // return response;
}

getbyid(id) async {
  var url = "https://maaz-api.tga-edu.com/api/users/$id";
  var baseurl = Uri.parse(url);
  var response = await http.get(baseurl);
  print(response.body);
  var responedata = jsonDecode(response.body);
  var userdata = UserModel.fromJson(responedata);
  print(userdata.data);
  return userdata;
}

updateuser(id, data)async {
  var url = "https://maaz-api.tga-edu.com/api/users/$id";
  var baseurl = Uri.parse(url);
  final response = await http.put(baseurl,
      body: jsonEncode(data), headers: {"content-type": "application/json"});
  print(response.body);
  // return response.body;
}