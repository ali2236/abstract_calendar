import 'package:abstarct_date/abstarct_date.dart';
import 'package:abstract_calendar/src/calendars/calendar.dart';
import 'package:abstract_calendar/src/calendars/calendar_provider.dart';
import 'package:abstract_calendar/src/events/simple_event.dart';

void main() {

  var calendar = CalendarProvider<Event>(
    name: 'main',
    calendars: [
      Calendar(
        id: 'first',
        name: 'mani1',
        query: (date) async* {
          yield Event<ShamsiDate>('_${date.hashCode}', date, 'today is $date');
        },
      ),
    ],
  );

  calendar.query(Date.now()).forEach((element) {
    print(element);
  });
}
