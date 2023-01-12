// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Students> productsFromJson(String str) => List<Students>.from(json.decode(str).map((x) => Students.fromJson(x)));

String productsToJson(List<Students> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Students {
  String numberOfStudents;
  String serialNumber;
  String id;
  String lastname;
  String firstname;
  String strand;
  String yearlevel;
  String section;

Students({
    required this.numberOfStudents,
    required this.serialNumber,
    required this.id,
    required this.lastname,
    required this.firstname,
    required this.strand,
    required this.yearlevel,
    required this.section,
  });


  factory Students.fromJson(Map<String, dynamic> json) => Students(
    numberOfStudents: json["number_of_students"],
    serialNumber: json["serial_number"],
    id: json["id"],
    lastname: json["lastname"],
    firstname: json["firstname"],
    strand: json["strand"],
    yearlevel: json["yearlevel"],
    section: json["section"],
  );

  Map<String, dynamic> toJson() => {
    "number_of_students": numberOfStudents,
    "serial_number": serialNumber,
    "id": id,
    "lastname": lastname,
    "firstname": firstname,
    "strand": strand,
    "yearlevel": yearlevel,
    "section": section,
  };
}
