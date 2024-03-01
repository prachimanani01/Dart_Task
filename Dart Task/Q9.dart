class Date {
  int day;
  int month;
  int year;
  Date(this.day, this.month, this.year);
  void setDay(int newDay) {
    if (newDay >= 1 && newDay <= 31) {
      day = newDay;
    } else {
      throw Exception('Invalid day');
    }
  }
  void setMonth(int newMonth) {
    if (newMonth >= 1 && newMonth <= 12) {
      month = newMonth;
    } else {
      throw Exception('Invalid month');
    }
  }
  void setYear(int newYear) {
    if (newYear >= 1) {
      year = newYear;
    } else {
      throw Exception('Invalid year');
    }
  }
  int getDay() {
    return day;
  }
  int getMonth() {
    return month;
  }
  int getYear() {
    return year;
  }
  @override
  String toString() {
    return '$day/$month/$year';
  }
}
void main() {
  Date date1 = Date(31, 12, 2022);
  Date date2 = Date(30, 4, 2021);
  print(date1);
  print(date2); 
  date1.setDay(15);
  date1.setMonth(10);
  print(date1); 
  try {
    date2.setDay(31);
  } catch (e) {
    print(e);
  }
  print(date2.getDay()); 
}