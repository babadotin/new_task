// enter_otp_page.dart

import 'package:flutter/material.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({
    Key? key,
    required String phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Otp();
  }
}

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() {
    return _OtpState();
  }
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.yellow,
                  ),
                ),
              ),
              const Text(
                'CO\nDE',
                style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
              const Text(
                'Verification',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Enter your OTP code number",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.yellow.shade100,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldOTP(
                        first: true,
                        last: false,
                      ),
                      textFieldOTP(
                        first: false,
                        last: false,
                      ),
                      textFieldOTP(
                        first: false,
                        last: false,
                      ),
                      textFieldOTP(
                        first: false,
                        last: false,
                      ),
                      textFieldOTP(
                        first: false,
                        last: false,
                      ),
                      textFieldOTP(
                        first: false,
                        last: true,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.yellow,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(
                          14.0,
                        ),
                        child: Text(
                          'Verify',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow.shade200,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Resend New Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textFieldOTP({
    required bool first,
    required bool last,
  }) {
    return SizedBox(
      height: 50,
      width: 35,
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && !last) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        showCursor: false,
        readOnly: false,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          // Added contentPadding to center the text vertically
          contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
          counter: const Offstage(),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.white30,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.yellow,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
