import 'package:abstarct_date/abstarct_date.dart';
import 'package:rxdart/rxdart.dart';

import 'calendar.dart';

class CalendarProvider<E> {
  final String name;
  final List<Calendar<E>> calendars;

  CalendarProvider({
    required this.name,
    required this.calendars,
  });

  Stream<E> query(Date date) => Rx.merge(calendars.map((c) => c.query(date)));
}
