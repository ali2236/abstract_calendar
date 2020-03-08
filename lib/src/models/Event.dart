import 'package:abstarct_date/abstarct_date.dart';
import 'package:abstract_calendar/src/models/AbstractEvent.dart';

class Event<T extends DateAdapter> implements AbstractEvent<T> {

  final String id;
  final String calendarId;
  final Date<T> date;

  Event(this.id, this.calendarId, this.date);


}