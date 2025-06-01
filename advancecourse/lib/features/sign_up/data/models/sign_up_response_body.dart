import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response_body.g.dart';

@JsonSerializable()
class SignUpResponseBody {
  String? message;
  Data? data;
  bool? status;
  int? code;

  SignUpResponseBody(this.message, this.data, this.status, this.code);
  factory SignUpResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseBodyFromJson(json);
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
