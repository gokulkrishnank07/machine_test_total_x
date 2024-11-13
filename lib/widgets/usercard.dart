import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String age;
  final String image;

  UserCard({required this.name, required this.age, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 28,
            ),
            SizedBox(width: 16),

           
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("Age: $age", style: TextStyle(fontSize: 14, color: Colors.grey[600])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}