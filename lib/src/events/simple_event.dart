import 'package:abstarct_date/abstarct_date.dart';

class Event<T extends DateAdapter> {

  final String id;
  final Date<T> date;
  final String name;

  Event(this.id, Date date, this.name) : this.date = date.to<T>();

  @override
  String toString() {
    return '($id, $date, $name)';
  }
}