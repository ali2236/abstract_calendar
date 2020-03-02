import 'package:abstarct_date/abstarct_date.dart';
import 'package:abstract_calendar/src/models/AbstractEvent.dart';
import 'package:flutter/cupertino.dart';

abstract class AbstractCalendar<T extends DateAdapter> extends ChangeNotifier {
  String get id;

  String get name;

  bool get enabled;

  bool get readOnly;

  Future<void> update({AbstractEvent event});

  Iterable<AbstractEvent> query(DateTime start, DateTime end);
}