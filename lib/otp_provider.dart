// OTP_page.dart

import 'package:flutter/material.dart';

class OtpProvider with ChangeNotifier {
  String countryCode = '+1'; // Default country code
  String phoneNumber = '';
  String otp = '';
  // String get phoneNumber => _phoneNumber;

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


// OtpProvider class ek ChangeNotifier hai,
// jiska kaam hai state ko maintain karna. 
//variables ko update karne ke liye setCountryCode, setPhoneNumber, aur setOTP functions ka use hua hai.
// Har function ke baad notifyListeners() call hua hai jo listeners ko bataata hai ki state change ho gaya hai