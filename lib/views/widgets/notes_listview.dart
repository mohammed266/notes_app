import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(),
      ),
      itemCount: 10,
    );
  }
}
