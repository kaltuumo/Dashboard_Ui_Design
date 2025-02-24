import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final Map<String, dynamic> data; // Added required 'data' parameter

  const ContainerCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.3),
            offset: Offset(0, 3),
            blurRadius: 2,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: data['background_color'],
            ),

            child: Icon(data['icon'], color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            data['title'],
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
