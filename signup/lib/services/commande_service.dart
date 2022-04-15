import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:signup/models/commande.dart';

/*****get all commande  *******/

class CommandeServices {
  static Future<List<Commande>> getListAllOrders(token) async {
    var response;
    Dio dio = new Dio();
    final commandes = <Commande>[];
    dio.options.headers['Authorization'] = 'Bearer $token';
    response = await dio.get('http://localhost:5000/commande/');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data);
      for (var item in data) {
        commandes.add(Commande.fromJson(item));
      }
    }
    return commandes.toList();
  }

  //////////////***get specific commande related to certain client *//////////
  ///
  static Future<List<Commande>> getspecificOrders(clientId) async {
    var response;
    Dio dio = new Dio();
    final commandes = <Commande>[];
    dio.options.headers['Authorization'] = 'Bearer $clientId';
    response = await dio.get('http://localhost:5000/commande/$clientId');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data);
      for (var item in data) {
        commandes.add(Commande.fromJson(item));
      }
    }
    return commandes.toList();
  }

  //////////////aad commande//////////////////
  static Future<List<Commande>> addOrders() async {
    var response;
    Dio dio = new Dio();
    final commandes = <Commande>[];
    dio.options.headers['Authorization'] = 'Bearer ';
    response = await dio.post('http://localhost:5000/commande/');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data);
      for (var item in data) {
        commandes.add(Commande.fromJson(item));
      }
    }
    return commandes;
  }
}
