import 'package:flutter/material.dart';
import 'package:suvayeproject/view/services_screen.dart';
import 'package:suvayeproject/view/chat_screen.dart';
import 'package:suvayeproject/view/today_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;

  List<Widget> widgetScreen = [
    const TodayScreen(),
    const ServiceScreen(),
    const ChatScreen(),
  ];

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
      body: widgetScreen[selected],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.purple.shade100,
          currentIndex: selected,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined), label: 'Today'),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps_outlined), label: "Services"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
          ]),
    );
  }
}
