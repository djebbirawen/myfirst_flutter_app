/*class LoginResponseModel {
  final String token;
  final String error;

  LoginResponseModel({required this.token, required this.error});
  factory LoginResponseModel.fromJason(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["token"] : "",
    );
  }
}

class LoginRequestModel {
  String email;
  String password;
  LoginRequestModel({
    required this.email,
    required this.password,
  });
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };
    return map;
  }
}
*/