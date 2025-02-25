import 'package:dashboard_ui_design/container_card.dart';
import 'package:dashboard_ui_design/listTile.dart';
import 'package:flutter/material.dart';

class listviewWidget extends StatelessWidget {
  const listviewWidget({super.key, required this.dashboardData});

  final List<Map<String, dynamic>> dashboardData;

  @override
  Widget build(BuildContext context) {
    return ListView(
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

          child: listTileWidget(),
        ),
        GridView.count(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          children: [
            ...dashboardData.map((data) => ContainerCard(data: data)).toList(),
          ],
        ),
      ],
    );
  }
}
