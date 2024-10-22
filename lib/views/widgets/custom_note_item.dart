

import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Build your career with yourself no one can help you',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 13,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                size: 27,
              ),
              color: Colors.black,
            ),
          ),
          Text(
            '16May,2024',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black.withOpacity(.5),
            ),
          ),
        ],
      ),
    );
  }
}
