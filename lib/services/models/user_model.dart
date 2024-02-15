class UserModel {
  String name;
  String address;
  String email;
  String password;
  String phone;

  UserModel({
    required this.name,
    required this.address,
    required this.email,
    required this.password,
    required this.phone,
  });

  // UserModel sınıfı içinde factory metodu
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      address: map['address'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      phone: map['phone'] ?? '',
    );
  }

  // UserModel sınıfı içinde toMap metodu
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'address': address,
      'email': email,
      'password': password,
      'phone': phone,
    };
  }
}
