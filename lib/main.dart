import 'package:flutter/material.dart';
import 'package:new_task/enter_phone_number_page.dart';
import 'package:new_task/otp_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OtpProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PhoneNumberPage(),
      ),
    );
  }
}


// ChangeNotifierProvider widget OtpProvider class ko provide karta hai, 
//jisse ye data ko manage karne aur update karne mein help karega.