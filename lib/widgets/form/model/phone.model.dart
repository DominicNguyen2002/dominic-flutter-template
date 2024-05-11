class PhoneModel {
  static final RegExp phoneRegex = RegExp(r'^(\+\d{1,3})?[\d\+\-\(\)\s]{10,}$');

  static bool isValid(String phoneNumber) {
    return phoneRegex.hasMatch(phoneNumber);
  }
}
