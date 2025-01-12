extension StringValidation on String? {
  bool isDigit() {
    return this!.codeUnits.every((element) => element >= 48 && element <= 57);
  }

  bool isPhone() {
    return isDigit() && this!.codeUnits.length == 11;
  }

  bool isEmail() {
    return this!.endsWith('@gmail.com');
  }

  bool isPassword() {
    return this!.length >= 8;
  }
}
