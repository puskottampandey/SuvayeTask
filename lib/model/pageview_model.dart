import 'package:flutter/material.dart';

class PageviewModel {
  final String heading;
  final String content;
  final Color containerColor;

  PageviewModel(
      {required this.heading,
      required this.content,
      required this.containerColor});
}

List<PageviewModel> pageview = [
  PageviewModel(
      heading: "App Development",
      content: "Develop beautiful fast mobile applications",
      containerColor: const Color.fromARGB(20, 0, 255, 0)),
  PageviewModel(
    heading: "Websites",
    content: "Develop beautiful fast web applications",
    containerColor: const Color.fromARGB(80, 255, 192, 203),
  ),
  PageviewModel(
    heading: "Designs",
    content: "Develop designs for mobile and web application",
    containerColor: const Color.fromARGB(200, 245, 245, 245),
  ),
];
