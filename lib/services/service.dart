import 'dart:convert';
import 'dart:io';
import 'package:app_mobile/screens/login.page.dart';
import 'package:cookie_jar/cookie_jar.dart';
//import 'package:e_banking_app/Controller/auth_controller.dart';

import 'package:shared_preferences/shared_preferences.dart';
//import 'package:e_banking_app/Consts/const.dart';
//import 'package:e_banking_app/views/home_screen/Home.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:jwt_decoder/jwt_decoder.dart';
//import 'package:jwt_decode/jwt_decode.dart';
//import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:flutter/material.dart';
import 'package:cookie_jar/cookie_jar.dart';

import '../screens/home.page.dart';

class Client {
  final String clientId;

  Client({required this.clientId});
}

class Service {
  //static Client? client;
  // Variables globales pour stocker les informations du client

  static int? clientId;

  static String? accessToken;

  static String? getAccessToken() {
    return accessToken;
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController adressController = TextEditingController();
  TextEditingController CINController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  //------------login
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //-----------otp
  TextEditingController otpController = TextEditingController();
  //-----------credit card infos

  // final ClientController clientController = Get.put(ClientController());

  //*****login
  static Future<void> login(TextEditingController emailController,
      TextEditingController passwordController) async {
    final url = Uri.parse('http://localhost:8080/api/auth/clientSignin');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({
      'username': emailController.text,
      'password': passwordController.text,
    });

    final response = await http
        .post(url, headers: headers, body: body)
        .timeout(Duration(seconds: 10));

    if (response.statusCode == 200) {
      Get.offAll(() => HomePage());
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

      // Decode the token and extract the role, accountId, and clientId
      Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
      String role="";
      if (decodedToken.containsKey('roles')) {
        List<dynamic> roles = decodedToken['roles'];
        if (roles.isNotEmpty) {
          String role = roles[0]; // Accéder au premier rôle de la liste
          print("Voici le rôle : $role");
        }
      } else {
        print("L'access token ne contient pas la clé 'roles'");
      }
      //

      int clientId = decodedToken['id'];
      print("voici notre clientid");
      print(clientId);

      // Store the role, accountId, and clientId as cookies

      if (role == 'CLIENT') {
        final cookieJar = CookieJar();
        if (response.headers.containsKey('set-cookie')) {
          final setCookies = response.headers['set-cookie']!;
          final cookies = <Cookie>[];
          final individualCookies = setCookies.split(',');
          for (var setCookie in individualCookies) {
            final cookie = Cookie.fromSetCookieValue(setCookie);
            cookies.add(cookie);
          }
          cookies.add(Cookie('client_id', clientId.toString()));
          var i = cookieJar.saveFromResponse(url, cookies);
          print(i);
        }

        Service.clientId = clientId;
        print("ligne 105");
        print(cookieJar);
        print("Affiche de cookies ");
        // Afficher les cookies

        // Redirect to the Home screen
        Service.clientId = clientId;
        Service.accessToken = token;
        Get.offAll(() => HomePage());
      } else {
        // Handle other roles or scenarios
        print("You are not a client");
        Get.offAll(() => LoginPage());
      }
    } else {
      print('Login failed');
      print('Response status code: ${response.statusCode}');
    }
  }

/*
  Future<void> login() async {
  final url = Uri.parse('http://192.168.100.157:8084/api/v1/auth/authenticate');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'email': emailController.text,
    'password': passwordController.text,
  });

  final response = await http.post(url, headers: headers, body: body).timeout(Duration(seconds: 10));;

  if (response.statusCode == 200) {
    final responseData = jsonDecode(response.body);
    final token = responseData['access_token'];

    // Store the token in shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    print(body);

    // Decode the token and extract the role, accountId, and clientId
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    String role = decodedToken['role'];
    String accountId = decodedToken['accountId'];
    String clientId = decodedToken['id'];
    // Store the role, accountId, and clientId as cookies
    final cookie = '${role};${clientId}';
    final cookieHeader = {'Set-Cookie': cookie};

    // Send the cookie back to the server in subsequent requests by adding it to the headers
    final headersWithCookie = {'Cookie': cookie};
    if (role == 'CLIENT') {
      // Redirect to the Home screen
      Get.offAll(() => Home());
      
    } else {
      // Handle other roles or scenarios
      print("your are not client");
    }

    // Set the variables as global variables or store them in shared preferences for later use

    print('Token: $token');
    print('Role: $role');
    print('Account ID: $accountId');
    print('Client ID: $clientId');
  } else {
    print('Login failed');
    print('Response status code: ${response.statusCode}');
  }
}
*/

  //***OTP :code envoye au client par sms contient le code de paiement********
  Future<void> verifyOtp() async {
    final otp = otpController.text;

    final response = await http.post(
      Uri.parse('http://your-backend-api.com/api/verify-otp'),
      body: otp,
    );

    if (response.statusCode == 200) {
      // Code OTP valide
      Get.to(() => HomePage());
    } else {
      // Code OTP invalide
      Get.dialog(
        AlertDialog(
          title: Text('Erreur'),
          content: Text('Le code OTP est invalide.'),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

//-----------------credit cart informations
  Future<Map<String, dynamic>> fetchData() async {
    final response = await http.get(Uri.parse('https://votre-api.com/donnees'));
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      return responseData;
    } else {
      throw Exception(
          'Erreur lors de la récupération des données: ${response.statusCode}');
    }
  }

  //---------------------------data balance worked
  Future<double> fetchBalance(int accountId) async {
    try {
      String accessToken = Service.getAccessToken()!;
      print("voici accessToken");
      print(accessToken);
      String id = accountId.toString();
      String apiUrl =
          'http://192.168.1.7:8084/fim/est3Dgate/getAccountBalance/$id';

      final response = await http.get(Uri.parse(apiUrl),
          headers: {'Authorization': 'Bearer $accessToken'});

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final accountBalance = responseData['balance'];
        print(accountBalance);
        return double.parse(accountBalance.toString());
      } else {
        throw Exception(
            'Erreur lors de la récupération de la balance: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Erreur lors de la récupération de la balance: $e');
    }
  }

  /*
  Future<double> fetchBalance(int accountId) async {
  try {
    String id = accountId.toString();
    String apiUrl = 'http://192.168.1.7:8084/fim/est3Dgate/getAccountBalance/$id';
    
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      final accountBalance = responseData['balance'];
      print(accountBalance);
      return double.parse(accountBalance.toString());
    } else {
      throw Exception('Erreur lors de la récupération de la balance: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Erreur lors de la récupération de la balance: $e');
  }
} */
//-----------------history data worked
  Future<List<Transaction>> fetchHistoryData(int accountId) async {
    String id = accountId.toString();
    String accessToken = Service.getAccessToken()!;
    String apiUrl =
        'http://192.168.1.7:8084/fim/est3Dgate/getTransactionHistories/$id';
    //final response = await http.get(Uri.parse(apiUrl,headers: {'Authorization': 'Bearer $accessToken'} ));
    final response = await http.get(Uri.parse(apiUrl),
        headers: {'Authorization': 'Bearer $accessToken'});

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      final List<Transaction> transactions = []; // Empty list of transactions

      if (responseData == null)
        return []; // Return empty list if responseData is null

      for (var data in responseData) {
        final transaction = Transaction(
          date: data['date'],
          name: data['creditor'],
          amount: data['amount'],
        );
        transactions.add(transaction);
      }
      List<Transaction> reversedTransactions = transactions.reversed.toList();

      print("les donnees de transaction");
      print(reversedTransactions);
      return reversedTransactions;
    } else {
      throw Exception(
          'Erreur lors de la récupération des données: ${response.statusCode}');
    }
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

class Transaction {
  final String date;
  final String name;
  final double amount;
  //final String disc;

  Transaction({required this.date, required this.name, required this.amount});
}
