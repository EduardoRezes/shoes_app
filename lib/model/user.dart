class User {
  int id;
  String name;
  String nickName;
  String email;
  String phone;
  String password;
  String confPassword;

  User({
    this.id = 0,
    this.name = "",
    this.nickName = "",
    this.email = "",
    this.phone = "",
    this.password = "",
    this.confPassword = "",
  });

  static const tableUser = "user";
  static const columnId = "id";
  static const columnName = "name";
  static const columnNickName = "nickName";
  static const columnEmail = "email";
  static const columnPhone = "phone";
  static const columnPassword = "password";
  static const columnConfPassword = "confPassword";

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map[columnId],
      name: map[columnName],
      nickName: map[columnNickName],
      email: map[columnEmail],
      phone: map[columnPhone],
      password: map[columnPassword],
      confPassword: map[columnConfPassword],
    );
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnName: name,
      columnNickName: nickName,
      columnEmail: email,
      columnPhone: phone,
      columnPassword: password,
      columnConfPassword: confPassword,
    };
    if (map[columnId] != null) {
      map[columnId] = id;
    }
    return map;
  }
}
