import 'package:flutter/material.dart';

class listTileWidget extends StatelessWidget {
  const listTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }
}
