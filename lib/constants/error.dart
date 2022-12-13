// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppError {
  String message;
  AppError({
    required this.message,
  });
}

class ErrorMessage {
  //thrown for socketException,HandshakeException [network related error generally]
  static String networkFailed = "Error in connection";

  static String generalError = "Error occured";
}
