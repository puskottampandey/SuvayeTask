import 'package:flutter/material.dart';

class ContainerProperties {
  final IconData icon;
  final Color iconColor;
  final Color containerColor;
  final String text;

  ContainerProperties(
      {required this.icon,
      required this.iconColor,
      required this.containerColor,
      required this.text});
}

List<ContainerProperties> dataitems = [
  ContainerProperties(
      icon: Icons.app_shortcut_outlined,
      iconColor: Colors.purple.shade100,
      containerColor: const Color.fromARGB(80, 227, 193, 233),
      text: "Apps"),
  ContainerProperties(
      icon: Icons.web_stories,
      iconColor: Colors.pink.shade100,
      containerColor: const Color.fromARGB(80, 255, 192, 203),
      text: "Websites"),
  ContainerProperties(
      icon: Icons.design_services_outlined,
      iconColor: Colors.yellow,
      containerColor: const Color.fromARGB(80, 238, 226, 123),
      text: "Designs"),
  ContainerProperties(
      icon: Icons.person,
      iconColor: Colors.cyan.shade100,
      containerColor: const Color.fromARGB(200, 245, 245, 245),
      text: "Consultant"),
];
