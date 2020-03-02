import 'package:abstarct_date/abstarct_date.dart';

import 'Event.dart';

class Calendar<T extends DateAdapter> {

  final String id;

  final String name;

  final bool enabled;

  final bool isReadOnly;

  final Iterable<Event> Function(DateTime start, DateTime end) query;


  Calendar(this.id, this.name, this.enabled, this.isReadOnly, this.query);



}