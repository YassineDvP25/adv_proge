import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  String? message;
  Data? data;
  bool? status;
  int? code;

  LoginResponseBody(this.message, this.data, this.status, this.code);
  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
}

@JsonSerializable()
class Data {
  String? token;
  @JsonKey(name: 'username')
  // Changed from userName to username to match the JSON key
  String? userName;
  Data({this.token, this.userName});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
