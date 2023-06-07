import 'dart:convert';

client clientJson(String str) => client.fromJson(json.decode(str));

String clientToJson(client data) => json.encode(data.toJson());

class client {
  int id;
  String firstName;
  String lastName;

  client({required this.id, required this.firstName, required this.lastName});

  factory client.fromJson(Map<String, dynamic> json) => client(
      firstName: json["firstName"], lastName: json["lastName"], id: json["id"]);

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        'id': id,
      };

  String get firstname => firstName;

  String get lastname => lastName;
}
