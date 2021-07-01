import 'package:abstarct_date/abstarct_date.dart';
import 'package:abstract_calendar/src/calendars/calendar_editor.dart';

class Calendar<E> {
  final String id;
  final String name;
  final bool readOnly;
  final bool enabled;
  final Stream<E> Function(Date date) query;
  final CalendarEditor<E>? _editor;

  CalendarEditor<E> get editor => readOnly
      ? throw 'not eaditable'
      : _editor == null ? throw '$name\'s editor is null' : _editor!;

  Calendar({
    required this.id,
    required this.name,
    required this.query,
    this.readOnly = true,
    this.enabled = true,
    CalendarEditor<E>? editor,
  }) : _editor = editor;

  int get eventCount => 0;

  @override
  int get hashCode => id.hashCode * 31;

  @override
  bool operator ==(Object other) {
    if(other is Calendar<E>) {
      return this.id == other.id;
    } else return false;
  }
}
