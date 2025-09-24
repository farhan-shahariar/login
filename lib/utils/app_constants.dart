class AppConstants {
  static RegExp emailRegExp = RegExp(
    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
  );

  static RegExp capitalLetterRegExp = RegExp(r'[A-Z]');
  static RegExp numberRegExp = RegExp(r'[0-9]');
}
