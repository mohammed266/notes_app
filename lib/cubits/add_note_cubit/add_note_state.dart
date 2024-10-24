



abstract class  AddNoteState{}

class AddNoteInitialState extends AddNoteState{}

class AddNoteLoadingState extends AddNoteState{}

class AddNoteSuccessState extends AddNoteState{}

class AddNoteFailureState extends AddNoteState{
  final String error;

  AddNoteFailureState({required this.error});
}