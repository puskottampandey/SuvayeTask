import 'package:flutter/material.dart';

import '../model/pageview_model.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  final PageController pageController = PageController(viewportFraction: 1);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        reverse: false,
        padEnds: true,
        scrollDirection: Axis.horizontal,
        controller: pageController,
        physics: const ScrollPhysics(),
        itemCount: pageview.length,
        itemBuilder: ((context, index) {
          final data = pageview[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: 120,
            decoration: BoxDecoration(
                color: data.containerColor,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.heading,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    data.content,
                    overflow: TextOverflow.clip,
                  )
                ],
              ),
            ),
          );
        }));
  }
}
