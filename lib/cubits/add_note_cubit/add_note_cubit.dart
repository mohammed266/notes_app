import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../model/note_model.dart';
import '../../views/constants.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());

  Color color = const Color(0xff7D83FF);
  addNote(NoteModel notes) async {
     notes.color = color.value;
    emit(AddNoteLoadingState());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(notes);
      emit(AddNoteSuccessState());
    } catch (e) {
      emit(AddNoteFailureState(error: e.toString()));
    }
  }
}
