import 'package:abstarct_date/abstarct_date.dart';

abstract class AbstractEvent<T extends DateAdapter> {

  String get id;

  String get calendarId;

  Date<T> get date;



}