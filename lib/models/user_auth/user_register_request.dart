class RegisterRequestModel {
  String? firstname;
  String? lastname;
  String? telephone;
  String? email;
  String? password;
  String? role;

  RegisterRequestModel(
      {this.firstname,
      this.lastname,
      this.telephone,
      this.email,
      this.password,
      this.role});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastname = json['lastname'];
    telephone = json['telephone'];
    email = json['email'];
    password = json['password'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['telephone'] = telephone;
    data['email'] = email;
    data['password'] = password;
    data['role'] = role;
    return data;
  }
}
