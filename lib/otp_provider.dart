// otp_provider.dart

import 'package:flutter/material.dart';

class OtpProvider with ChangeNotifier {
  String countryCode = '+91';
  String phoneNumber = '';
  String otp = '';

  void setCountryCode(String code) {
    countryCode = code;
    notifyListeners();
  }

  void setPhoneNumber(String number) {
    phoneNumber = number;
    notifyListeners();
  }

  void setOTP(String code) {
    otp = code;
    notifyListeners();
  }

  String getPhoneNumber() {
    return '$countryCode $phoneNumber';
  }
}
