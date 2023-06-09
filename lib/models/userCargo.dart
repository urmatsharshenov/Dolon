class UserCargo {

  UserCargo.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    surname = json['surname'];
    phoneNumber = json['phone_number'];
    userType = json['user_type'];
  }

  UserCargo({this.name, this.surname, this.phoneNumber, this.userType});
  String name;
  String surname;
  String phoneNumber;
  String userType;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['surname'] = surname;
    data['phone_number'] = phoneNumber;
    data['user_type'] = userType;
    return data;
  }
}