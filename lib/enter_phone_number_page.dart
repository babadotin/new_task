// PhoneNumberPage.dart

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:new_task/enter_otp_page.dart';
import 'package:new_task/otp_provider.dart';
import 'package:provider/provider.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<OtpProvider>(context);

    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.yellow,
                size: 44, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text(
          'Get OTP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.yellow,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.yellow,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Drawer',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'CO\nDE',
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'We will send you an One Time Password on this mobile number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: IntlPhoneField(
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    authProvider.setPhoneNumber(phone.number);
                  },
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: authProvider.phoneNumber.isEmpty
                    ? null
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                OTPPage(phoneNumber: authProvider.phoneNumber),
                          ),
                        );
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  minimumSize: const Size(360, 60),
                ),
                child: const Text(
                  'Get OTP',
                  style: TextStyle(fontSize: 25, color: Colors.yellow),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// is file me aur OTPPage mein Provider ka istemal kia hai data ko manage karne ke liye
// OtpProvider class ke functions ka use karke state ko update kia hai, 
// PhoneNumberPage widget mein, Provider.of<OtpProvider>(context) se OtpProvider ka instance authProvider milta hai. 
//Is instance ka use onChanged event mein phone number ko set karne mein aur onPressed event mein OTP page par jaane mein hota hai.