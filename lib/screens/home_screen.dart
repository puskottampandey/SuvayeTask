import 'package:flutter/material.dart';
import 'package:suvayeproject/screens/Services_screen.dart';
import 'package:suvayeproject/screens/chat_screen.dart';
import 'package:suvayeproject/screens/today_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;

  Widget widgetScreen(int index) {
    switch (index) {
      case 0:
        return const TodayScreen();
      case 1:
        return const ServiceScreen();
      case 2:
        return const ChatScreen();
    }
    return const Text("not found");
  }

  void onTap(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/suvaye.jpg',
                  height: 40,
                  width: 40,
                ),
                const Text('Suvaye')
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  size: 30,
                ))
          ],
        ),
      ),
      body: widgetScreen(selected),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined), label: 'Today'),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps_outlined), label: "Servies"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
          ]),
    );
  }
}
