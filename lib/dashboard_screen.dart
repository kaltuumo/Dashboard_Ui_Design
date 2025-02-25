import 'package:dashboard_ui_design/listView.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  final List<Map<String, dynamic>> dashboardData = const [
    {
      "id": 1,
      "title": "Videos",
      "icon": Icons.play_arrow,
      "background_color": Colors.deepOrange,
    },
    {
      "id": 2,
      "title": "Subject",
      "icon": Icons.chat,
      "background_color": Colors.purple,
    },
    {
      "id": 3,
      "title": "Subjects",
      "icon": Icons.book,
      "background_color": Colors.pink,
    },
    {
      "id": 4,
      "title": "Music",
      "icon": Icons.music_note,
      "background_color": Colors.blueAccent,
    },
    {
      "id": 5,
      "title": "Chat",
      "icon": Icons.chat,
      "background_color": Colors.green,
    },
    {
      "id": 6,
      "title": "Setting",
      "icon": Icons.settings,
      "background_color": Colors.lime,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: Text("Dashboard", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: listviewWidget(dashboardData: dashboardData),
    );
  }
}
