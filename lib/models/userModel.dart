class UserModel {
  final String name;
  final String password;

  UserModel(this.name, this.password);

  Map<String, dynamic> toMap() {
    return {'name': name, 'password': password};
  }
}
