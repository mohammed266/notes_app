import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_listview.dart';

import 'custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: NotesListview(),
          ),
        ],
      ),
    );
  }
}
