extension DateTimeExtension on DateTime {
  static String getMonthName(int month) {
    switch (month) {
      case DateTime.january:
        return "Janeiro";
      case DateTime.february:
        return "Fevereiro";
      case DateTime.march:
        return "Março";
      case DateTime.april:
        return "Abril";
      case DateTime.may:
        return "Maio";
      case DateTime.june:
        return "June";
      case DateTime.july:
        return "Julho";
      case DateTime.august:
        return "Agosto";
      case DateTime.september:
        return "Setembro";
      case DateTime.october:
        return "Outubro";
      case DateTime.november:
        return "Novembro";
      case DateTime.december:
        return "Dezembro";
      default:
        return "";
    }
  }
}
