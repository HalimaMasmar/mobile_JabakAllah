import 'dart:convert';
import 'dart:io';
//import 'dart:js';
import 'package:app_mobile/screens/login.page.dart';
import 'package:app_mobile/screens/splash.page.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

import '../screens/home.page.dart';

class Client {
  final String clientId;

  Client({required this.clientId});
}

class Service {
  // Variables globales pour stocker les informations du client

  static int? clientId;

  static String? accessToken;

  static String? getAccessToken() {
    return accessToken;
  }

  //------------login
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //login Methode
  static Future<void> login(TextEditingController emailController,
      TextEditingController passwordController) async {
    final url = Uri.parse('https://bougra.herokuapp.com/api/auth/clientSignin');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({
      'username': emailController.text,
      'password': passwordController.text,
    });

    final response = await http
        .post(url, headers: headers, body: body)
        .timeout(Duration(seconds: 10));

    if (response.statusCode == 200) {
      print("requette a le status 200 dans ça marche");
      final responseData = jsonDecode(response.body);
      print("voici notre responseData");
      print(responseData);
      final token = responseData['accessToken'];
      print("voici notre token");
      print(token);
      //Store the token in shared preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', token);
      print('ensa');

      // Decode the token and extract the role, accountId, and clientId

      if (true) {
        //final cookieJar = CookieJar();
        if (response.headers.containsKey('set-cookie')) {
          final setCookies = response.headers['set-cookie']!;
          final cookies = <Cookie>[];
          final individualCookies = setCookies.split(',');
          for (var setCookie in individualCookies) {
            final cookie = Cookie.fromSetCookieValue(setCookie);
            cookies.add(cookie);
          }
          //cookies.add(Cookie('client_id', clientId.toString()));
          //var i = cookieJar.saveFromResponse(url, cookies);
          //print(i);
        }

        print("Affiche de cookies ");

        Get.offAll(() => HomePage());
        // Navigator.of(context as BuildContext).pushNamed('/home');
      } else {
        print("You are not a client");
        Get.offAll(() => LoginPage());
      }
    } else {
      print('Login failed');
      print('Response status code: ${response.statusCode}');
    }
  }

  // Méthode pour déconnecter l'utilisateur
  static Future<void> logout() async {
    // Supprimez le token des préférences partagées
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');

    // Redirigez vers la page de connexion ou toute autre page appropriée
    Get.offAll(() => SplashPage());
  }

  //-------------------change password
  /*
  static Future<void> changePassword(String currentPassword, String newPassword) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
             //Service.client != null au lieu du condition suivante
    if (Service.accountId != null && Service.clientId != null) {
      final url = Uri.parse('http://votre-url-de-changement-de-mot-de-passe');
      final headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      };
      final body = jsonEncode({
        'currentPassword': currentPassword,
        'newPassword': newPassword,
      });

      try {
        final response = await http.put(url, headers: headers, body: body).timeout(Duration(seconds: 10));

        if (response.statusCode == 200) {
          print('Le mot de passe a été changé avec succès');
        } else {
          print('Échec du changement de mot de passe');
          print('Code de statut de la réponse: ${response.statusCode}');
        }
      } catch (error) {
        print('Une erreur s\'est produite lors du changement de mot de passe: $error');
      }
    } else {
      print('L\'utilisateur n\'est pas un client');
    }
  }*/
}
