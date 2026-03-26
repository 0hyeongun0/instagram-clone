import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 8,
              children: [
                CircleAvatar(),
                Text('username'),
              ],
            ),
            Icon(Icons.more_vert),
          ],
        ),
        Container(
          height: 300,
          color: Colors.grey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite_border),

                Icon(Icons.chat_bubble_outline),

                Icon(Icons.repeat),

                Icon(Icons.send),

                // Spacer(),
              ],
            ),

            Icon(Icons.bookmark_border),
          ],
        ),
      ],
    );
  }
}
