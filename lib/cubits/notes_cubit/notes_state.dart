


abstract class NotesState{}


class InitialNotesState extends NotesState{}

class LoadingNotesState extends NotesState{}

class SuccessNotesState extends NotesState {}

class FailureNotesState extends NotesState {
  final String error;

  FailureNotesState(this.error);
}

