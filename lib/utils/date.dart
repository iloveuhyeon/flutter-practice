DateTime date = DateTime.now(); // 날짜에 대한 함수
int year = date.year; // 년
int month = date.month; // 월
int day = date.day; // 일
int getWeekOfMonth(int year, int month, int day) {
  // 몇주차인이 알려주는 함수
  DateTime firstDayOfMonth = DateTime(year, month, 1);
  int firstDayOfWeek = firstDayOfMonth.weekday;
  int weekOfMonth = ((day + firstDayOfWeek - 1) / 7).ceil();
  return weekOfMonth;
}

int weekofMonth = getWeekOfMonth(year, month, day); // 주