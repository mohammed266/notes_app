import 'package:flutter/material.dart';
import 'constants.dart';
import 'widgets/add_note_bottom_sheet.dart';
import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => const AddNoteBottomSheet(),
            );
          },
          child: const Icon(
            Icons.add,
            size: 25,
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
