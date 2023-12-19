// OTP_page.dart

import 'package:flutter/material.dart';

class OtpProvider with ChangeNotifier {
  String countryCode = '+1';
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
}
