import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';

import '../../cubits/notes_cubit/notes_state.dart';
import 'custom_note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? []; /// or notes!
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (_, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: NoteItem(
                notes: notes[index],
              ),
            ),
            itemCount: notes.length,
          ),
        );
      },
    );
  }
}
