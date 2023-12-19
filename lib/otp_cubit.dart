import 'package:bloc/bloc.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(OtpState());

  void setCountryCode(String code) {
    emit(state.copyWith(countryCode: code));
  }

  void setPhoneNumber(String number) {
    emit(state.copyWith(phoneNumber: number));
  }

  void setOTP(String code) {
    emit(state.copyWith(otp: code));
  }
}

class OtpState {
  final String countryCode;
  final String phoneNumber;
  final String otp;

  OtpState({
    this.countryCode = '+91',
    this.phoneNumber = '',
    this.otp = '',
  });

  OtpState copyWith({
    String? countryCode,
    String? phoneNumber,
    String? otp,
  }) {
    return OtpState(
      countryCode: countryCode ?? this.countryCode,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      otp: otp ?? this.otp,
    );
  }
}
