import 'package:dashboard_ui_design/container_card.dart';
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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),

            child: ListTile(
              title: Text(
                "Mss Kl",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Welcome Back!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                radius: 30,
              ),
            ),
          ),
          GridView.count(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            padding: EdgeInsets.all(10),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: [
              ...dashboardData
                  .map((data) => ContainerCard(data: data))
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
