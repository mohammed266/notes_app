import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../model/note_model.dart';
import '../../views/constants.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit {
  AddNoteCubit() : super(AddNoteInitialState());

  addNote(NoteModel notes) async {
    emit(AddNoteLoadingState());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccessState());
      await noteBox.add(notes);
    } catch (e) {
      emit(AddNoteFailureState(error: e.toString()));
    }
  }
}
