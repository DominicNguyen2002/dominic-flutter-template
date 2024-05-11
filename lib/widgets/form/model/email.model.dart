class EmailModel {
  static final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  static bool isValid(String email) {
    return emailRegex.hasMatch(email);
  }
}
