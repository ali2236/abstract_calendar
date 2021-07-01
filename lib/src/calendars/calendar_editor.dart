class CalendarEditor<E> {
  final Future<void> Function(E event)? add;
  final Future<E> Function(String id ,E event)? edit;
  final Future<E> Function(String id)? delete;

  CalendarEditor({this.add, this.edit, this.delete});
}