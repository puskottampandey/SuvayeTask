import 'package:flutter/material.dart';

import '../model/gridview_iteam_model.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
            mainAxisExtent: 60,
            crossAxisCount: 2),
        itemCount: dataitems.length,
        itemBuilder: (context, index) {
          final data = dataitems[index];

          return Container(
            width: 50,
            decoration: BoxDecoration(
              color: data.containerColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    data.icon,
                    color: data.iconColor,
                  ),
                  Text(
                    data.text,
                    style: const TextStyle(letterSpacing: 0),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
