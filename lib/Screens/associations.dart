import 'package:flutter/material.dart';


class Associations {
  String name;
  String thumbnail ;


  Associations({
    required this.name,
    required this.thumbnail,
  });
}

List<Associations> associationList = [
  Associations(
    name: 'IEEE',
    thumbnail : 'assets/ieee.png',
  ),
  Associations(
    name: 'Rotaract',
    thumbnail : 'assets/rotaract.png',
  ),
  Associations(
    name: 'Aiesec',
    thumbnail : 'assets/aiesec.png',
  ),
  Associations(
    name: 'Microsot',
    thumbnail : 'assets/microsoft.png',
  ),
  Associations(
    name: 'Google',
    thumbnail : 'assets/google.png',
  ),
];