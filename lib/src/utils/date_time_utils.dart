import 'package:intl/intl.dart';
import '../extensions/date_time.ext.dart';

class DateTimeUtils {
  DateTimeUtils._();
  static DateTime now = DateTime.now();

  static DateTime getEndDateOfMonth() {
    return DateTime(now.year, now.month + 1, 0);
  }

  static DateTime getEndDateOfYear() {
    return DateTime(now.year + 1, 1, 0);
  }

  static DateTime getEndDateOfWeek() {
    return now.addDaysWithoutTime(DateTime.daysPerWeek - now.weekday + 1);
  }

  static String getDateDetails(DateTime time) {
    if (time.year == now.year &&
        time.month == now.month &&
        time.day == now.day) {
      // Same day
      return DateFormat('hh:mm').format(time);
    } else if (now.in7Days(time)) {
      // Same week
      return DateFormat('EEE At hh:mm').format(time);
    } else if (time.year == now.year) {
      // Same year
      return DateFormat('MMMM dd At hh:mm').format(time);
    } else {
      // Other
      return DateFormat('MMMM dd yyyy').format(time);
    }
  }

  static String getTimeDetails(DateTime time) {
    if (time.year == now.year &&
        time.month == now.month &&
        time.day == now.day) {
      return DateFormat('HH:mm').format(time);
    } else {
      var now_1w = now.subtract(const Duration(days: 7));
      if (time.isAfter(now_1w)) {
        return DateFormat('EEEE - HH:mm').format(time);
      } else {
        if (time.year == now.year) {
          return DateFormat('dd/MM - HH:mm').format(time);
        } else {
          return DateFormat('dd/MM/yyyy - HH:mm').format(time);
        }
      }
    }
  }

  static String getTimeAudio(Duration time) {
    return "${time.inMinutes.remainder(60).toString().padLeft(2, "0")}"
        ":${time.inSeconds.remainder(60).toString().padLeft(2, "0")}";
  }

  static bool isTheSameTime(DateTime time1, DateTime time2) {
    if (time1.year == time2.year &&
        time1.month == time2.month &&
        time1.day == time2.day &&
        time1.hour == time2.hour &&
        time1.minute == time2.minute) {
      return true;
    } else {
      return false;
    }
  }

  static int getWeekDay(DateTime date, bool startWeekWithSunday) {
    if (startWeekWithSunday) {
      return date.weekday == DateTime.sunday ? 1 : date.weekday + 1;
    } else {
      return date.weekday;
    }
  }

  static DateTime lastDayOfWeek(
    DateTime firstDayOfWeek,
    bool startWeekWithSunday,
  ) {
    int daysInMonth = firstDayOfWeek.daysInMonth;

    final dayOfWeek = getWeekDay(firstDayOfWeek, startWeekWithSunday);
    final restOfWeek = DateTime.daysPerWeek - dayOfWeek;

    return firstDayOfWeek.day + restOfWeek > daysInMonth
        ? DateTime(firstDayOfWeek.year, firstDayOfWeek.month, daysInMonth)
        : firstDayOfWeek.addDays(restOfWeek);
  }

  static DateTime findDayOfWeekInMonth(
    DateTime date,
    int dayOfWeek, {
    bool startWeekWithSunday = false,
  }) {
    date = date.removeTime();

    if (date.weekday ==
        (startWeekWithSunday ? DateTime.sunday : DateTime.monday)) {
      return date;
    } else {
      return date.subtract(
          Duration(days: getWeekDay(date, startWeekWithSunday) - dayOfWeek));
    }
  }

  static List<int> daysPerMonth(int year) => <int>[
        31,
        _isLeapYear(year) ? 29 : 28,
        31,
        30,
        31,
        30,
        31,
        31,
        30,
        31,
        30,
        31,
      ];

  static bool _isLeapYear(int year) {
    return (year & 3) == 0 && ((year % 25) != 0 || (year & 15) == 0);
  }

  static int getNoOfSpaceRequiredBeforeFirstValidDate(
    List<int> weekdaysToHide,
    int weekdayValueForFirstValidDay, [
    bool isSundayFirstDayOfWeek = false,
  ]) {
    final mondayWeekDayList = [1, 2, 3, 4, 5, 6, 7];
    final sundayWeekDayList = [7, 1, 2, 3, 4, 5, 6];

    mondayWeekDayList.removeWhere(
      (weekday) => weekdaysToHide.contains(weekday),
    );
    sundayWeekDayList.removeWhere(
      (weekday) => weekdaysToHide.contains(weekday),
    );

    return isSundayFirstDayOfWeek
        ? sundayWeekDayList.indexOf(weekdayValueForFirstValidDay)
        : mondayWeekDayList.indexOf(weekdayValueForFirstValidDay);
  }
}
